.class Lcom/android/server/am/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "ActivityStartInterceptor.java"


# instance fields
.field mAInfo:Landroid/content/pm/ActivityInfo;

.field mActivityOptions:Landroid/app/ActivityOptions;

.field private mCallingPackage:Ljava/lang/String;

.field mCallingPid:I

.field mCallingUid:I

.field mInTask:Lcom/android/server/am/TaskRecord;

.field mIntent:Landroid/content/Intent;

.field mRInfo:Landroid/content/pm/ResolveInfo;

.field private mRealCallingPid:I

.field private mRealCallingUid:I

.field mResolvedType:Ljava/lang/String;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5
    .line 85
    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@7
    .line 83
    return-void
.end method

.method private interceptQuietProfileIfNeeded()Z
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 123
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    #@5
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    #@7
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 124
    return v7

    #@12
    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@14
    .line 127
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    #@16
    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    #@18
    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    #@1a
    .line 128
    new-array v8, v14, [Landroid/content/Intent;

    #@1c
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@1e
    aput-object v1, v8, v7

    #@20
    new-array v9, v14, [Ljava/lang/String;

    #@22
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@24
    aput-object v1, v9, v7

    #@26
    .line 127
    const/4 v1, 0x2

    #@27
    .line 129
    const/high16 v10, 0x50000000

    #@29
    move-object v6, v5

    #@2a
    move-object v11, v5

    #@2b
    .line 126
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    #@2e
    move-result-object v13

    #@2f
    .line 131
    .local v13, "target":Landroid/content/IIntentSender;
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    #@31
    .line 132
    new-instance v1, Landroid/content/IntentSender;

    #@33
    invoke-direct {v1, v13}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@36
    .line 131
    invoke-static {v0, v1}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@3c
    .line 133
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    #@3e
    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    #@40
    .line 134
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    #@42
    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    #@44
    .line 135
    iput-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@46
    .line 137
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    #@48
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    #@4a
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@4d
    move-result-object v12

    #@4e
    .line 138
    .local v12, "parent":Landroid/content/pm/UserInfo;
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@50
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@52
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@54
    iget v3, v12, Landroid/content/pm/UserInfo;->id:I

    #@56
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    #@59
    move-result-object v0

    #@5a
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    #@5c
    .line 139
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5e
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@60
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    #@62
    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    #@64
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    #@67
    move-result-object v0

    #@68
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    #@6a
    .line 140
    return v14
.end method

.method private interceptSuspendPackageIfNeed()Z
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 145
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    #@8
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    if-nez v2, :cond_1

    #@c
    .line 147
    :cond_0
    return v4

    #@d
    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    #@f
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@11
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@13
    const/high16 v3, 0x40000000    # 2.0f

    #@15
    and-int/2addr v2, v3

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 150
    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    #@1a
    .line 149
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    #@20
    .line 151
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v0, :cond_2

    #@22
    .line 152
    return v4

    #@23
    .line 155
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    #@25
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@27
    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    #@29
    .line 154
    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->createPackageSuspendedDialogIntent(Ljava/lang/String;I)Landroid/content/Intent;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@2f
    .line 156
    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    #@31
    iput v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    #@33
    .line 157
    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    #@35
    iput v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    #@37
    .line 158
    iput-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@39
    .line 160
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    #@3b
    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    #@3d
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@40
    move-result-object v1

    #@41
    .line 161
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_3

    #@43
    .line 162
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@45
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@47
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@49
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    #@4b
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    #@4e
    move-result-object v2

    #@4f
    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    #@51
    .line 166
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@53
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@55
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    #@57
    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    #@59
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    #@5c
    move-result-object v2

    #@5d
    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    #@5f
    .line 167
    const/4 v2, 0x1

    #@60
    return v2

    #@61
    .line 164
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@63
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@65
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@67
    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    #@69
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    #@6c
    move-result-object v2

    #@6d
    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    #@6f
    goto :goto_0
.end method

.method private interceptWithConfirmCredentialsIfNeeded(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 211
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@6
    move/from16 v0, p5

    #@8
    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 212
    const/4 v1, 0x0

    #@f
    return-object v1

    #@10
    .line 215
    :cond_0
    move-object/from16 v0, p3

    #@12
    iget-boolean v1, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@14
    if-eqz v1, :cond_1

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1a
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@1c
    .line 216
    const/4 v2, 0x2

    #@1d
    .line 215
    move/from16 v0, p5

    #@1f
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 217
    const/4 v1, 0x0

    #@26
    return-object v1

    #@27
    .line 219
    :cond_1
    move-object/from16 v0, p0

    #@29
    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2b
    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2e
    move-result v4

    #@2f
    const/4 v2, 0x1

    #@30
    new-array v9, v2, [Landroid/content/Intent;

    #@32
    const/4 v2, 0x0

    #@33
    aput-object p1, v9, v2

    #@35
    .line 222
    const/4 v2, 0x1

    #@36
    new-array v10, v2, [Ljava/lang/String;

    #@38
    const/4 v2, 0x0

    #@39
    aput-object p2, v10, v2

    #@3b
    .line 220
    const/4 v2, 0x2

    #@3c
    .line 221
    const/4 v6, 0x0

    #@3d
    const/4 v7, 0x0

    #@3e
    const/4 v8, 0x0

    #@3f
    .line 223
    const/high16 v11, 0x54000000

    #@41
    const/4 v12, 0x0

    #@42
    move-object/from16 v3, p4

    #@44
    move/from16 v5, p5

    #@46
    .line 219
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    #@49
    move-result-object v15

    #@4a
    .line 224
    .local v15, "target":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    #@4c
    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4e
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@50
    .line 225
    const-string/jumbo v2, "keyguard"

    #@53
    .line 224
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@56
    move-result-object v13

    #@57
    check-cast v13, Landroid/app/KeyguardManager;

    #@59
    .line 226
    .local v13, "km":Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    #@5a
    const/4 v2, 0x0

    #@5b
    move/from16 v0, p5

    #@5d
    invoke-virtual {v13, v1, v2, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    #@60
    move-result-object v14

    #@61
    .line 227
    .local v14, "newIntent":Landroid/content/Intent;
    if-nez v14, :cond_2

    #@63
    .line 228
    const/4 v1, 0x0

    #@64
    return-object v1

    #@65
    .line 230
    :cond_2
    const v1, 0x10804000

    #@68
    invoke-virtual {v14, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@6b
    .line 232
    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    #@6e
    move-object/from16 v0, p3

    #@70
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@72
    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@75
    .line 233
    const-string/jumbo v1, "android.intent.extra.INTENT"

    #@78
    new-instance v2, Landroid/content/IntentSender;

    #@7a
    invoke-direct {v2, v15}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@7d
    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@80
    .line 234
    return-object v14
.end method

.method private interceptWorkProfileChallengeIfNeeded()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 171
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@3
    .line 172
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@5
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    #@7
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    #@9
    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    #@b
    move-object v0, p0

    #@c
    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)Landroid/content/Intent;

    #@f
    move-result-object v7

    #@10
    .line 173
    .local v7, "interceptingIntent":Landroid/content/Intent;
    if-nez v7, :cond_0

    #@12
    .line 174
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 176
    :cond_0
    iput-object v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@16
    .line 177
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    #@18
    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    #@1a
    .line 178
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    #@1c
    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    #@1e
    .line 179
    iput-object v9, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@20
    .line 183
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 184
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@26
    const-string/jumbo v1, "android.intent.extra.TASK_ID"

    #@29
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    #@2b
    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@30
    .line 185
    iput-object v9, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    #@32
    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    #@34
    if-nez v0, :cond_2

    #@36
    .line 188
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    #@3c
    .line 191
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3e
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    #@41
    move-result-object v6

    #@42
    .line 192
    .local v6, "homeActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_3

    #@44
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@46
    if-eqz v0, :cond_3

    #@48
    .line 195
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    #@4a
    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4c
    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@4e
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    #@51
    .line 198
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    #@53
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    #@55
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@58
    move-result-object v8

    #@59
    .line 199
    .local v8, "parent":Landroid/content/pm/UserInfo;
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5b
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@5d
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@5f
    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    #@61
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    #@64
    move-result-object v0

    #@65
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    #@67
    .line 200
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@69
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@6b
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    #@6d
    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    #@6f
    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    #@72
    move-result-object v0

    #@73
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    #@75
    .line 201
    const/4 v0, 0x1

    #@76
    return v0
.end method


# virtual methods
.method intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I
    .param p8, "activityOptions"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    #@a
    .line 100
    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@c
    .line 101
    iput p6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    #@e
    .line 102
    iput p7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    #@10
    .line 103
    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    #@12
    .line 104
    iput-object p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    #@14
    .line 105
    iput-object p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@16
    .line 106
    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    #@18
    .line 107
    iput-object p8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    #@1a
    .line 108
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptSuspendPackageIfNeed()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 111
    return-void

    #@21
    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 116
    return-void

    #@28
    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWorkProfileChallengeIfNeeded()Z

    #@2b
    .line 98
    return-void
.end method

.method setStates(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "startFlags"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    iput p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    #@2
    .line 91
    iput p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    #@4
    .line 92
    iput p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    #@6
    .line 93
    iput p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    #@8
    .line 94
    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    #@a
    .line 89
    return-void
.end method
