.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$ActionTitle;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAdapterView:Landroid/widget/AbsListView;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mIconDpi:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProfileSwitchMessageId:I

.field private mProfileView:Landroid/view/View;

.field private mRegistered:Z

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@4
    .line 99
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    #@6
    .line 100
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    #@9
    .line 101
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    #@b
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    #@12
    .line 107
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    #@14
    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    #@17
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@19
    .line 85
    return-void
.end method

.method private getReferrerPackageName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 373
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    #@4
    move-result-object v0

    #@5
    .line 374
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v1, "android-app"

    #@a
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 375
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 377
    :cond_0
    return-object v3
.end method

.method private hasManagedProfile()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 541
    const-string/jumbo v5, "user"

    #@4
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v4

    #@8
    check-cast v4, Landroid/os/UserManager;

    #@a
    .line 542
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_0

    #@c
    .line 543
    return v6

    #@d
    .line 547
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    #@10
    move-result v5

    #@11
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@14
    move-result-object v1

    #@15
    .line 548
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v3

    #@19
    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_2

    #@1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/content/pm/UserInfo;

    #@25
    .line 549
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    #@27
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_1

    #@2d
    .line 550
    const/4 v5, 0x1

    #@2e
    return v5

    #@2f
    .line 553
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@30
    .line 554
    .local v0, "e":Ljava/lang/SecurityException;
    return v6

    #@31
    .line 556
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_2
    return v6
.end method

.method static final isSpecificUriMatch(I)Z
    .locals 2
    .param p0, "match"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1718
    const/high16 v1, 0xfff0000

    #@3
    and-int/2addr p0, v1

    #@4
    .line 1719
    const/high16 v1, 0x300000

    #@6
    if-lt p0, v1, :cond_0

    #@8
    .line 1720
    const/high16 v1, 0x500000

    #@a
    if-gt p0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 1719
    :cond_0
    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@9
    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@d
    .line 167
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@10
    move-result v1

    #@11
    const v2, -0x800001

    #@14
    and-int/2addr v1, v2

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@18
    .line 168
    return-object v0
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p0, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p1, "rhs"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 877
    if-nez p0, :cond_2

    #@4
    if-nez p1, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    move v0, v1

    #@8
    goto :goto_0

    #@9
    .line 878
    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@b
    if-nez v2, :cond_3

    #@d
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@f
    if-eqz v2, :cond_0

    #@11
    move v0, v1

    #@12
    goto :goto_0

    #@13
    .line 879
    :cond_3
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@15
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@17
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1b
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_4

    #@21
    .line 880
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@23
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@25
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@27
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@29
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    goto :goto_0

    #@2e
    :cond_4
    move v0, v1

    #@2f
    .line 879
    goto :goto_0
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    #@0
    .prologue
    .line 571
    const/4 v0, 0x0

    #@1
    .line 572
    .local v0, "enabled":Z
    if-eqz p1, :cond_0

    #@3
    .line 573
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@5
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    #@8
    move-result-object v1

    #@9
    .line 574
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@b
    const/4 v3, -0x2

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 575
    const/4 v0, 0x1

    #@f
    .line 578
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    #@11
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    #@14
    .line 570
    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .locals 5
    .param p1, "contentUserHint"    # I

    #@0
    .prologue
    .line 401
    const/4 v4, -0x2

    #@1
    if-eq p1, v4, :cond_1

    #@3
    .line 402
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6
    move-result v4

    #@7
    if-eq p1, v4, :cond_1

    #@9
    .line 403
    const-string/jumbo v4, "user"

    #@c
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/os/UserManager;

    #@12
    .line 404
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@15
    move-result-object v1

    #@16
    .line 405
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    #@18
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@1b
    move-result v0

    #@1c
    .line 407
    :goto_0
    invoke-virtual {v3}, Landroid/os/UserManager;->isManagedProfile()Z

    #@1f
    move-result v2

    #@20
    .line 408
    .local v2, "targetIsManaged":Z
    if-eqz v0, :cond_0

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 410
    :cond_0
    if-nez v0, :cond_1

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 411
    const v4, 0x1040428

    #@2b
    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    #@2d
    .line 400
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "targetIsManaged":Z
    .end local v3    # "userManager":Landroid/os/UserManager;
    :cond_1
    :goto_1
    return-void

    #@2e
    .line 406
    .restart local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Landroid/os/UserManager;
    :cond_2
    const/4 v0, 0x0

    #@2f
    .local v0, "originIsManaged":Z
    goto :goto_0

    #@30
    .line 409
    .end local v0    # "originIsManaged":Z
    .restart local v2    # "targetIsManaged":Z
    :cond_3
    const v4, 0x1040427

    #@33
    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    #@35
    goto :goto_1
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 561
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v3

    #@5
    .line 562
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@9
    const/4 v5, 0x0

    #@a
    .line 561
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@d
    move-result-object v0

    #@e
    .line 563
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    const/16 v4, 0x15

    #@12
    if-lt v3, v4, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    return v2

    #@16
    .line 564
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@17
    .line 565
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method


# virtual methods
.method bindProfileView()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 385
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@3
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@6
    move-result-object v0

    #@7
    .line 386
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v0, :cond_1

    #@9
    .line 387
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@b
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    #@e
    .line 388
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@10
    const v4, 0x1020006

    #@13
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/widget/ImageView;

    #@19
    .line 389
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@1b
    const v4, 0x1020014

    #@1e
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/widget/TextView;

    #@24
    .line 390
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_0

    #@2a
    .line 391
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    #@2c
    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    #@2f
    new-array v4, v5, [Ljava/lang/Void;

    #@31
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@34
    .line 393
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3b
    .line 394
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@42
    .line 384
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "text":Landroid/widget/TextView;
    :goto_0
    return-void

    #@43
    .line 396
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@45
    const/16 v4, 0x8

    #@47
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    #@4a
    goto :goto_0
.end method

.method configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 10
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 819
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    #@2
    if-eqz p4, :cond_0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_2

    #@a
    :cond_0
    const/4 v6, 0x0

    #@b
    :goto_0
    move-object v0, p0

    #@c
    move-object v1, p0

    #@d
    move-object v2, p1

    #@e
    move-object v3, p2

    #@f
    move-object v4, p3

    #@10
    .line 818
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@16
    .line 822
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_3

    #@1e
    .line 823
    const v9, 0x10900c1

    #@21
    .line 824
    .local v9, "layoutId":I
    const/4 p4, 0x0

    #@22
    .line 828
    .end local p4    # "alwaysUseOption":Z
    :goto_1
    iput-boolean p4, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@24
    .line 830
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@26
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    #@29
    move-result v7

    #@2a
    .line 831
    .local v7, "count":I
    const/4 v0, 0x1

    #@2b
    if-gt v7, v0, :cond_1

    #@2d
    const/4 v0, 0x1

    #@2e
    if-ne v7, v0, :cond_4

    #@30
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@32
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@35
    move-result-object v0

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 832
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    #@3b
    .line 833
    const v0, 0x1020316

    #@3e
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/widget/AbsListView;

    #@44
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@46
    .line 834
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@48
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@4a
    invoke-virtual {p0, v0, v1, p4}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V

    #@4d
    .line 812
    :goto_2
    return-void

    #@4e
    .line 819
    .end local v7    # "count":I
    .end local v9    # "layoutId":I
    .restart local p4    # "alwaysUseOption":Z
    :cond_2
    const/4 v6, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 826
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    #@53
    move-result v9

    #@54
    .restart local v9    # "layoutId":I
    goto :goto_1

    #@55
    .line 835
    .end local p4    # "alwaysUseOption":Z
    .restart local v7    # "count":I
    :cond_4
    const/4 v0, 0x1

    #@56
    if-ne v7, v0, :cond_5

    #@58
    .line 836
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@5a
    const/4 v1, 0x0

    #@5b
    const/4 v2, 0x0

    #@5c
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    #@63
    .line 837
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@65
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    #@68
    .line 838
    const/4 v0, 0x0

    #@69
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@6b
    .line 839
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@6e
    .line 840
    return-void

    #@6f
    .line 842
    :cond_5
    const v0, 0x10900c0

    #@72
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    #@75
    .line 844
    const v0, 0x1020004

    #@78
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@7b
    move-result-object v8

    #@7c
    check-cast v8, Landroid/widget/TextView;

    #@7e
    .line 845
    .local v8, "empty":Landroid/widget/TextView;
    const/4 v0, 0x0

    #@7f
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@82
    .line 847
    const v0, 0x1020316

    #@85
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@88
    move-result-object v0

    #@89
    check-cast v0, Landroid/widget/AbsListView;

    #@8b
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@8d
    .line 848
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@8f
    const/16 v1, 0x8

    #@91
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    #@94
    goto :goto_2
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    #@0
    .prologue
    .line 807
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    move v6, p5

    #@8
    move v7, p6

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    #@c
    return-object v0
.end method

.method dismiss()V
    .locals 1

    #@0
    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 446
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@9
    .line 444
    :cond_0
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    #@0
    .prologue
    .line 453
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    #@2
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 458
    :goto_0
    return-object v1

    #@7
    .line 454
    :catch_0
    move-exception v0

    #@8
    .line 455
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    #@9
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method getLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 381
    const v0, 0x10900c0

    #@3
    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 612
    return-object p2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/content/Intent;

    #@13
    goto :goto_0
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 433
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@7
    .line 434
    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@9
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@c
    move-result v0

    #@d
    .line 435
    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@f
    if-ne v1, v2, :cond_1

    #@11
    if-eqz p2, :cond_1

    #@13
    .line 436
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 433
    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@1b
    move-result-object v1

    #@1c
    .restart local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    goto :goto_0

    #@1d
    .line 438
    .restart local v0    # "named":Z
    :cond_1
    if-eqz v0, :cond_2

    #@1f
    .line 439
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    #@21
    const/4 v3, 0x1

    #@22
    new-array v3, v3, [Ljava/lang/Object;

    #@24
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@26
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    #@2d
    move-result-object v4

    #@2e
    aput-object v4, v3, v5

    #@30
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 438
    :goto_1
    return-object v2

    #@35
    .line 440
    :cond_2
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    #@37
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 464
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 465
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    #@a
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@c
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    #@f
    move-result-object v3

    #@10
    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    #@12
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v0

    #@16
    .line 466
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@18
    .line 467
    return-object v0

    #@19
    .line 470
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    #@1c
    move-result v2

    #@1d
    .line 471
    .local v2, "iconRes":I
    if-eqz v2, :cond_1

    #@1f
    .line 472
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    #@21
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@23
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@25
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v0

    #@2d
    .line 473
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@2f
    .line 474
    return-object v0

    #@30
    .line 477
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    #@31
    .line 478
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "ResolverActivity"

    #@34
    const-string/jumbo v4, "Couldn\'t find resources for package"

    #@37
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    .line 480
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    #@3c
    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@3f
    move-result-object v3

    #@40
    return-object v3
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    .line 789
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 582
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result v0

    #@4
    .line 583
    .local v0, "id":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 584
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@a
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    #@d
    move-result v1

    #@e
    move v2, v1

    #@f
    .line 585
    :goto_0
    const v1, 0x10203a1

    #@12
    if-ne v0, v1, :cond_1

    #@14
    const/4 v1, 0x1

    #@15
    .line 586
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@17
    .line 583
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    #@1a
    .line 581
    return-void

    #@1b
    .line 584
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    #@20
    move-result v1

    #@21
    move v2, v1

    #@22
    goto :goto_0

    #@23
    .line 585
    :cond_1
    const/4 v1, 0x0

    #@24
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 174
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    #@5
    move-result-object v2

    #@6
    .line 175
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@9
    move-result-object v8

    #@a
    .line 176
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "android.intent.action.MAIN"

    #@d
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 177
    if-eqz v8, :cond_0

    #@19
    .line 178
    invoke-interface {v8}, Ljava/util/Set;->size()I

    #@1c
    move-result v0

    #@1d
    if-ne v0, v7, :cond_0

    #@1f
    .line 179
    const-string/jumbo v0, "android.intent.category.HOME"

    #@22
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 176
    if-eqz v0, :cond_0

    #@28
    .line 181
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    #@2a
    .line 184
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    #@2d
    .line 186
    const/4 v4, 0x0

    #@2e
    move-object v0, p0

    #@2f
    move-object v1, p1

    #@30
    move-object v5, v3

    #@31
    move-object v6, v3

    #@32
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    #@35
    .line 172
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 202
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v15, 0x1030489

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    #@8
    .line 203
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@b
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getContentUserHint()I

    #@e
    move-result v15

    #@f
    move-object/from16 v0, p0

    #@11
    invoke-direct {v0, v15}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    #@14
    .line 210
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@17
    move-result-object v15

    #@18
    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    #@1b
    move-result-object v16

    #@1c
    .line 210
    invoke-interface/range {v15 .. v16}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    #@1f
    move-result v15

    #@20
    move-object/from16 v0, p0

    #@22
    iput v15, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 216
    :goto_0
    move-object/from16 v0, p0

    #@26
    iget v15, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    #@28
    if-ltz v15, :cond_0

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget v15, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    #@2e
    invoke-static {v15}, Landroid/os/UserHandle;->isIsolated(I)Z

    #@31
    move-result v15

    #@32
    if-eqz v15, :cond_1

    #@34
    .line 218
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@37
    .line 219
    return-void

    #@38
    .line 212
    :catch_0
    move-exception v8

    #@39
    .line 213
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v15, -0x1

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput v15, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    #@3e
    goto :goto_0

    #@3f
    .line 222
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@42
    move-result-object v15

    #@43
    move-object/from16 v0, p0

    #@45
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    #@47
    .line 224
    move-object/from16 v0, p0

    #@49
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    #@4e
    move-result-object v16

    #@4f
    const/16 v17, 0x0

    #@51
    move-object/from16 v0, p0

    #@53
    move-object/from16 v1, v16

    #@55
    move/from16 v2, v17

    #@57
    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    #@5a
    .line 225
    const/4 v15, 0x1

    #@5b
    move-object/from16 v0, p0

    #@5d
    iput-boolean v15, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@5f
    .line 227
    const-string/jumbo v15, "activity"

    #@62
    move-object/from16 v0, p0

    #@64
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@67
    move-result-object v5

    #@68
    check-cast v5, Landroid/app/ActivityManager;

    #@6a
    .line 228
    .local v5, "am":Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    #@6d
    move-result v15

    #@6e
    move-object/from16 v0, p0

    #@70
    iput v15, v0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    #@72
    .line 231
    move-object/from16 v0, p0

    #@74
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    #@76
    new-instance v16, Landroid/content/Intent;

    #@78
    move-object/from16 v0, v16

    #@7a
    move-object/from16 v1, p2

    #@7c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@7f
    const/16 v17, 0x0

    #@81
    move/from16 v0, v17

    #@83
    move-object/from16 v1, v16

    #@85
    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@88
    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    #@8b
    move-result-object v12

    #@8c
    .line 235
    .local v12, "referrerPackage":Ljava/lang/String;
    new-instance v15, Lcom/android/internal/app/ResolverComparator;

    #@8e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    #@91
    move-result-object v16

    #@92
    move-object/from16 v0, p0

    #@94
    move-object/from16 v1, v16

    #@96
    invoke-direct {v15, v0, v1, v12}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    #@99
    move-object/from16 v0, p0

    #@9b
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    #@9d
    .line 237
    move-object/from16 v0, p0

    #@9f
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    #@a1
    move-object/from16 v0, p0

    #@a3
    move-object/from16 v1, p5

    #@a5
    move-object/from16 v2, p6

    #@a7
    move/from16 v3, p7

    #@a9
    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V

    #@ac
    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    #@af
    move-result-object v15

    #@b0
    const v16, 0x10100

    #@b3
    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->clearFlags(I)V

    #@b6
    .line 243
    const v15, 0x10202f6

    #@b9
    move-object/from16 v0, p0

    #@bb
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@be
    move-result-object v11

    #@bf
    check-cast v11, Lcom/android/internal/widget/ResolverDrawerLayout;

    #@c1
    .line 244
    .local v11, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v11, :cond_2

    #@c3
    .line 245
    new-instance v15, Lcom/android/internal/app/ResolverActivity$2;

    #@c5
    move-object/from16 v0, p0

    #@c7
    invoke-direct {v15, v0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    #@ca
    invoke-virtual {v11, v15}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    #@cd
    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    #@d0
    move-result v15

    #@d1
    if-eqz v15, :cond_2

    #@d3
    .line 252
    const/4 v15, 0x0

    #@d4
    invoke-virtual {v11, v15}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    #@d7
    .line 256
    :cond_2
    if-nez p3, :cond_3

    #@d9
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@dc
    move-result-object v15

    #@dd
    move-object/from16 v0, p0

    #@df
    move/from16 v1, p4

    #@e1
    invoke-virtual {v0, v15, v1}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    #@e4
    move-result-object p3

    #@e5
    .line 259
    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e8
    move-result v15

    #@e9
    if-nez v15, :cond_6

    #@eb
    .line 260
    const v15, 0x1020016

    #@ee
    move-object/from16 v0, p0

    #@f0
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@f3
    move-result-object v14

    #@f4
    check-cast v14, Landroid/widget/TextView;

    #@f6
    .line 261
    .local v14, "titleView":Landroid/widget/TextView;
    if-eqz v14, :cond_4

    #@f8
    .line 262
    move-object/from16 v0, p3

    #@fa
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@fd
    .line 264
    :cond_4
    move-object/from16 v0, p0

    #@ff
    move-object/from16 v1, p3

    #@101
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    #@104
    .line 267
    const v15, 0x1020314

    #@107
    move-object/from16 v0, p0

    #@109
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@10c
    move-result-object v13

    #@10d
    check-cast v13, Landroid/widget/ImageView;

    #@10f
    .line 268
    .local v13, "titleIcon":Landroid/widget/ImageView;
    if-eqz v13, :cond_6

    #@111
    .line 269
    const/4 v4, 0x0

    #@112
    .line 271
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@115
    move-result v15

    #@116
    if-nez v15, :cond_5

    #@118
    .line 272
    move-object/from16 v0, p0

    #@11a
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    #@11c
    const/16 v16, 0x0

    #@11e
    move/from16 v0, v16

    #@120
    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@123
    move-result-object v4

    #@124
    .line 278
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    #@126
    .line 279
    move-object/from16 v0, p0

    #@128
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    #@12a
    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@12d
    move-result-object v15

    #@12e
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@131
    .line 284
    .end local v13    # "titleIcon":Landroid/widget/ImageView;
    .end local v14    # "titleView":Landroid/widget/TextView;
    :cond_6
    const v15, 0x1020006

    #@134
    move-object/from16 v0, p0

    #@136
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@139
    move-result-object v10

    #@13a
    check-cast v10, Landroid/widget/ImageView;

    #@13c
    .line 285
    .local v10, "iconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    #@13e
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@140
    invoke-virtual {v15}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@143
    move-result-object v9

    #@144
    .line 286
    .local v9, "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v10, :cond_7

    #@146
    if-eqz v9, :cond_7

    #@148
    .line 287
    new-instance v15, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    #@14a
    move-object/from16 v0, p0

    #@14c
    invoke-direct {v15, v0, v9, v10}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    #@14f
    const/16 v16, 0x0

    #@151
    move/from16 v0, v16

    #@153
    new-array v0, v0, [Ljava/lang/Void;

    #@155
    move-object/from16 v16, v0

    #@157
    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@15a
    .line 290
    :cond_7
    if-nez p7, :cond_8

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@160
    invoke-virtual {v15}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@163
    move-result v15

    #@164
    if-eqz v15, :cond_9

    #@166
    .line 291
    :cond_8
    const v15, 0x1020392

    #@169
    move-object/from16 v0, p0

    #@16b
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@16e
    move-result-object v6

    #@16f
    check-cast v6, Landroid/view/ViewGroup;

    #@171
    .line 292
    .local v6, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v6, :cond_d

    #@173
    .line 293
    const/4 v15, 0x0

    #@174
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@177
    .line 294
    const v15, 0x10203a1

    #@17a
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@17d
    move-result-object v15

    #@17e
    check-cast v15, Landroid/widget/Button;

    #@180
    move-object/from16 v0, p0

    #@182
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    #@184
    .line 295
    const v15, 0x10203a0

    #@187
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@18a
    move-result-object v15

    #@18b
    check-cast v15, Landroid/widget/Button;

    #@18d
    move-object/from16 v0, p0

    #@18f
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    #@191
    .line 301
    .end local v6    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    #@193
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@195
    invoke-virtual {v15}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@198
    move-result v15

    #@199
    if-eqz v15, :cond_a

    #@19b
    .line 302
    move-object/from16 v0, p0

    #@19d
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@19f
    invoke-virtual {v15}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    #@1a2
    move-result v15

    #@1a3
    const/16 v16, 0x1

    #@1a5
    const/16 v17, 0x0

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    move/from16 v1, v16

    #@1ab
    move/from16 v2, v17

    #@1ad
    invoke-direct {v0, v1, v15, v2}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    #@1b0
    .line 303
    move-object/from16 v0, p0

    #@1b2
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    #@1b4
    const/16 v16, 0x1

    #@1b6
    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setEnabled(Z)V

    #@1b9
    .line 306
    :cond_a
    const v15, 0x1020315

    #@1bc
    move-object/from16 v0, p0

    #@1be
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@1c1
    move-result-object v15

    #@1c2
    move-object/from16 v0, p0

    #@1c4
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@1c6
    .line 307
    move-object/from16 v0, p0

    #@1c8
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@1ca
    if-eqz v15, :cond_b

    #@1cc
    .line 308
    move-object/from16 v0, p0

    #@1ce
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@1d0
    new-instance v16, Lcom/android/internal/app/ResolverActivity$3;

    #@1d2
    move-object/from16 v0, v16

    #@1d4
    move-object/from16 v1, p0

    #@1d6
    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    #@1d9
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@1dc
    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    #@1df
    .line 326
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    #@1e2
    move-result v15

    #@1e3
    if-eqz v15, :cond_c

    #@1e5
    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    #@1e8
    .line 201
    :cond_c
    return-void

    #@1e9
    .line 274
    .end local v9    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v10    # "iconView":Landroid/widget/ImageView;
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "titleIcon":Landroid/widget/ImageView;
    .restart local v14    # "titleView":Landroid/widget/TextView;
    :catch_1
    move-exception v7

    #@1ea
    .line 275
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v15, "ResolverActivity"

    #@1ed
    new-instance v16, Ljava/lang/StringBuilder;

    #@1ef
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1f2
    const-string/jumbo v17, "Could not find referrer package "

    #@1f5
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v16

    #@1f9
    move-object/from16 v0, v16

    #@1fb
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v16

    #@1ff
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@202
    move-result-object v16

    #@203
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@206
    goto/16 :goto_1

    #@208
    .line 297
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "titleIcon":Landroid/widget/ImageView;
    .end local v14    # "titleView":Landroid/widget/TextView;
    .restart local v6    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v9    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .restart local v10    # "iconView":Landroid/widget/ImageView;
    :cond_d
    const/4 v15, 0x0

    #@209
    move-object/from16 v0, p0

    #@20b
    iput-boolean v15, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@20d
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 196
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, p4

    #@6
    move-object v6, p5

    #@7
    move v7, p6

    #@8
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    #@b
    .line 195
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 519
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@3
    .line 520
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 521
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@f
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    #@12
    .line 518
    :cond_0
    return-void
.end method

.method onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 6
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    #@0
    .prologue
    .line 854
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@3
    move-result v2

    #@4
    .line 855
    .local v2, "useHeader":Z
    instance-of v3, p1, Landroid/widget/ListView;

    #@6
    if-eqz v3, :cond_2

    #@8
    move-object v0, p1

    #@9
    check-cast v0, Landroid/widget/ListView;

    #@b
    .line 857
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@d
    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@10
    .line 859
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    #@12
    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    #@15
    .line 860
    .local v1, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@18
    .line 861
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    #@1b
    .line 863
    if-eqz p3, :cond_0

    #@1d
    .line 864
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    #@21
    .line 867
    :cond_0
    if-eqz v2, :cond_1

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 868
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@28
    move-result-object v3

    #@29
    .line 869
    const v4, 0x10900bf

    #@2c
    const/4 v5, 0x0

    #@2d
    .line 868
    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    #@34
    .line 853
    :cond_1
    return-void

    #@35
    .line 855
    .end local v1    # "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    :cond_2
    const/4 v0, 0x0

    #@36
    .local v0, "listView":Landroid/widget/ListView;
    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    #@0
    .prologue
    .line 485
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    #@3
    .line 486
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 487
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@9
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    #@11
    .line 488
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@14
    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    #@19
    .line 491
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 492
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    #@20
    .line 484
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 528
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 529
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@9
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    #@c
    move-result v0

    #@d
    .line 530
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    #@e
    if-eq v0, v2, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    .line 531
    .local v1, "hasValidSelection":Z
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    #@13
    .line 532
    const/4 v2, 0x1

    #@14
    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    #@17
    .line 533
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    #@19
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    #@1c
    .line 534
    if-eqz v1, :cond_0

    #@1e
    .line 535
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@20
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    #@23
    .line 526
    .end local v0    # "checkedPos":I
    .end local v1    # "hasValidSelection":Z
    :cond_0
    return-void

    #@24
    .line 530
    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    #@25
    .restart local v1    # "hasValidSelection":Z
    goto :goto_0
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    #@0
    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    #@3
    .line 334
    return-void
.end method

.method protected onStop()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 498
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    #@4
    .line 499
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 500
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    #@d
    .line 501
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@f
    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@16
    move-result v0

    #@17
    const/high16 v1, 0x10000000

    #@19
    and-int/2addr v0, v1

    #@1a
    if-eqz v0, :cond_1

    #@1c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 497
    :cond_1
    :goto_0
    return-void

    #@23
    .line 511
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_1

    #@29
    .line 512
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@2c
    goto :goto_0
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 39
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    #@0
    .prologue
    .line 616
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@3
    move-result-object v35

    #@4
    .line 617
    .local v35, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_2

    #@6
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    #@9
    move-result-object v4

    #@a
    .line 619
    :goto_0
    if-eqz v4, :cond_f

    #@c
    move-object/from16 v0, p0

    #@e
    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@10
    if-nez v3, :cond_0

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@16
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_f

    #@1c
    .line 620
    :cond_0
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@20
    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@22
    if-eqz v3, :cond_f

    #@24
    .line 622
    new-instance v7, Landroid/content/IntentFilter;

    #@26
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@29
    .line 623
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@2c
    move-result-object v13

    #@2d
    .line 625
    .local v13, "action":Ljava/lang/String;
    if-eqz v13, :cond_1

    #@2f
    .line 626
    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@32
    .line 628
    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@35
    move-result-object v17

    #@36
    .line 629
    .local v17, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v17, :cond_3

    #@38
    .line 630
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v16

    #@3c
    .local v16, "cat$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_3

    #@42
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v15

    #@46
    check-cast v15, Ljava/lang/String;

    #@48
    .line 631
    .local v15, "cat":Ljava/lang/String;
    invoke-virtual {v7, v15}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@4b
    goto :goto_1

    #@4c
    .line 617
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "action":Ljava/lang/String;
    .end local v15    # "cat":Ljava/lang/String;
    .end local v16    # "cat$iterator":Ljava/util/Iterator;
    .end local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const/4 v4, 0x0

    #@4d
    .local v4, "intent":Landroid/content/Intent;
    goto :goto_0

    #@4e
    .line 634
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    #@51
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@54
    .line 636
    move-object/from16 v0, v35

    #@56
    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    #@58
    const/high16 v5, 0xfff0000

    #@5a
    and-int v14, v3, v5

    #@5c
    .line 637
    .local v14, "cat":I
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@5f
    move-result-object v19

    #@60
    .line 638
    .local v19, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    #@62
    if-ne v14, v3, :cond_4

    #@64
    .line 639
    move-object/from16 v0, p0

    #@66
    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    #@69
    move-result-object v26

    #@6a
    .line 640
    .local v26, "mimeType":Ljava/lang/String;
    if-eqz v26, :cond_4

    #@6c
    .line 642
    :try_start_0
    move-object/from16 v0, v26

    #@6e
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    .line 649
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v26    # "mimeType":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v19, :cond_5

    #@73
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    if-eqz v3, :cond_5

    #@79
    .line 653
    const/high16 v3, 0x600000

    #@7b
    if-ne v14, v3, :cond_7

    #@7d
    .line 654
    const-string/jumbo v3, "file"

    #@80
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v3

    #@88
    if-nez v3, :cond_5

    #@8a
    .line 655
    const-string/jumbo v3, "content"

    #@8d
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v3

    #@95
    if-eqz v3, :cond_7

    #@97
    .line 697
    :cond_5
    :goto_3
    if-eqz v7, :cond_f

    #@99
    .line 698
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@9d
    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@9f
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@a2
    move-result v10

    #@a3
    .line 699
    .local v10, "N":I
    new-array v0, v10, [Landroid/content/ComponentName;

    #@a5
    move-object/from16 v36, v0

    #@a7
    .line 700
    .local v36, "set":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    #@a8
    .line 701
    .local v8, "bestMatch":I
    const/16 v23, 0x0

    #@aa
    .local v23, "i":I
    :goto_4
    move/from16 v0, v23

    #@ac
    if-ge v0, v10, :cond_e

    #@ae
    .line 702
    move-object/from16 v0, p0

    #@b0
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@b2
    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@b4
    move/from16 v0, v23

    #@b6
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b9
    move-result-object v3

    #@ba
    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@bc
    const/4 v5, 0x0

    #@bd
    invoke-virtual {v3, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@c0
    move-result-object v33

    #@c1
    .line 703
    .local v33, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    #@c3
    move-object/from16 v0, v33

    #@c5
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@c7
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@c9
    .line 704
    move-object/from16 v0, v33

    #@cb
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@cd
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@cf
    .line 703
    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d2
    aput-object v3, v36, v23

    #@d4
    .line 705
    move-object/from16 v0, v33

    #@d6
    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    #@d8
    if-le v3, v8, :cond_6

    #@da
    move-object/from16 v0, v33

    #@dc
    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    #@de
    .line 701
    :cond_6
    add-int/lit8 v23, v23, 0x1

    #@e0
    goto :goto_4

    #@e1
    .line 643
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v23    # "i":I
    .end local v33    # "r":Landroid/content/pm/ResolveInfo;
    .end local v36    # "set":[Landroid/content/ComponentName;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v26    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v21

    #@e2
    .line 644
    .local v21, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v3, "ResolverActivity"

    #@e5
    move-object/from16 v0, v21

    #@e7
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ea
    .line 645
    const/4 v7, 0x0

    #@eb
    .local v7, "filter":Landroid/content/IntentFilter;
    goto :goto_2

    #@ec
    .line 656
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v21    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v26    # "mimeType":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@ef
    move-result-object v3

    #@f0
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@f3
    .line 660
    move-object/from16 v0, v35

    #@f5
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@f7
    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    #@fa
    move-result-object v28

    #@fb
    .line 661
    .local v28, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v28, :cond_9

    #@fd
    .line 662
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@100
    move-result-object v37

    #@101
    .line 663
    .local v37, "ssp":Ljava/lang/String;
    :cond_8
    if-eqz v37, :cond_9

    #@103
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    #@106
    move-result v3

    #@107
    if-eqz v3, :cond_9

    #@109
    .line 664
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10c
    move-result-object v27

    #@10d
    check-cast v27, Landroid/os/PatternMatcher;

    #@10f
    .line 665
    .local v27, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v27

    #@111
    move-object/from16 v1, v37

    #@113
    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    #@116
    move-result v3

    #@117
    if-eqz v3, :cond_8

    #@119
    .line 666
    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@11c
    move-result-object v3

    #@11d
    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getType()I

    #@120
    move-result v5

    #@121
    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@124
    .line 671
    .end local v27    # "p":Landroid/os/PatternMatcher;
    .end local v37    # "ssp":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v35

    #@126
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@128
    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    #@12b
    move-result-object v12

    #@12c
    .line 672
    .local v12, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_b

    #@12e
    .line 673
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@131
    move-result v3

    #@132
    if-eqz v3, :cond_b

    #@134
    .line 674
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@137
    move-result-object v11

    #@138
    check-cast v11, Landroid/content/IntentFilter$AuthorityEntry;

    #@13a
    .line 675
    .local v11, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v19

    #@13c
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    #@13f
    move-result v3

    #@140
    if-ltz v3, :cond_a

    #@142
    .line 676
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    #@145
    move-result v32

    #@146
    .line 677
    .local v32, "port":I
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@149
    move-result-object v5

    #@14a
    .line 678
    if-ltz v32, :cond_d

    #@14c
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@14f
    move-result-object v3

    #@150
    .line 677
    :goto_5
    invoke-virtual {v7, v5, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    #@153
    .line 683
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v32    # "port":I
    :cond_b
    move-object/from16 v0, v35

    #@155
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@157
    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    #@15a
    move-result-object v28

    #@15b
    .line 684
    if-eqz v28, :cond_5

    #@15d
    .line 685
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@160
    move-result-object v30

    #@161
    .line 686
    .local v30, "path":Ljava/lang/String;
    :cond_c
    if-eqz v30, :cond_5

    #@163
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    #@166
    move-result v3

    #@167
    if-eqz v3, :cond_5

    #@169
    .line 687
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16c
    move-result-object v27

    #@16d
    check-cast v27, Landroid/os/PatternMatcher;

    #@16f
    .line 688
    .restart local v27    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v27

    #@171
    move-object/from16 v1, v30

    #@173
    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    #@176
    move-result v3

    #@177
    if-eqz v3, :cond_c

    #@179
    .line 689
    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@17c
    move-result-object v3

    #@17d
    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getType()I

    #@180
    move-result v5

    #@181
    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    #@184
    goto/16 :goto_3

    #@186
    .line 678
    .end local v27    # "p":Landroid/os/PatternMatcher;
    .end local v30    # "path":Ljava/lang/String;
    .restart local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v32    # "port":I
    :cond_d
    const/4 v3, 0x0

    #@187
    goto :goto_5

    #@188
    .line 707
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v28    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v32    # "port":I
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v23    # "i":I
    .restart local v36    # "set":[Landroid/content/ComponentName;
    :cond_e
    if-eqz p2, :cond_17

    #@18a
    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    #@18d
    move-result v38

    #@18e
    .line 709
    .local v38, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@191
    move-result-object v31

    #@192
    .line 712
    .local v31, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@195
    move-result-object v3

    #@196
    move-object/from16 v0, v31

    #@198
    move-object/from16 v1, v36

    #@19a
    invoke-virtual {v0, v7, v8, v1, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    #@19d
    .line 714
    move-object/from16 v0, v35

    #@19f
    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    #@1a1
    if-eqz v3, :cond_11

    #@1a3
    .line 716
    move-object/from16 v0, v31

    #@1a5
    move/from16 v1, v38

    #@1a7
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    #@1aa
    move-result-object v29

    #@1ab
    .line 717
    .local v29, "packageName":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1ae
    move-result v3

    #@1af
    if-eqz v3, :cond_f

    #@1b1
    .line 718
    move-object/from16 v0, v35

    #@1b3
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1b5
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1b7
    move-object/from16 v0, v31

    #@1b9
    move/from16 v1, v38

    #@1bb
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    #@1be
    .line 753
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":I
    .end local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "data":Landroid/net/Uri;
    .end local v23    # "i":I
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    .end local v36    # "set":[Landroid/content/ComponentName;
    .end local v38    # "userId":I
    :cond_f
    :goto_6
    if-eqz p1, :cond_10

    #@1c0
    .line 754
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    #@1c3
    .line 756
    :cond_10
    const/4 v3, 0x1

    #@1c4
    return v3

    #@1c5
    .line 722
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v14    # "cat":I
    .restart local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "data":Landroid/net/Uri;
    .restart local v23    # "i":I
    .restart local v31    # "pm":Landroid/content/pm/PackageManager;
    .restart local v36    # "set":[Landroid/content/ComponentName;
    .restart local v38    # "userId":I
    :cond_11
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@1c8
    move-result-object v18

    #@1c9
    .line 723
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1cc
    move-result-object v29

    #@1cd
    .line 724
    .restart local v29    # "packageName":Ljava/lang/String;
    if-eqz v19, :cond_12

    #@1cf
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@1d2
    move-result-object v20

    #@1d3
    .line 726
    :goto_7
    if-eqz v20, :cond_14

    #@1d5
    .line 727
    const-string/jumbo v3, "http"

    #@1d8
    move-object/from16 v0, v20

    #@1da
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1dd
    move-result v3

    #@1de
    if-nez v3, :cond_13

    #@1e0
    .line 728
    const-string/jumbo v3, "https"

    #@1e3
    move-object/from16 v0, v20

    #@1e5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e8
    move-result v24

    #@1e9
    .line 730
    :goto_8
    if-eqz v13, :cond_15

    #@1eb
    const-string/jumbo v3, "android.intent.action.VIEW"

    #@1ee
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f1
    move-result v25

    #@1f2
    .line 731
    :goto_9
    if-eqz v17, :cond_16

    #@1f4
    .line 732
    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    #@1f7
    move-object/from16 v0, v17

    #@1f9
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1fc
    move-result v22

    #@1fd
    .line 734
    :goto_a
    if-eqz v24, :cond_f

    #@1ff
    if-eqz v25, :cond_f

    #@201
    if-eqz v22, :cond_f

    #@203
    .line 736
    const/4 v3, 0x2

    #@204
    .line 735
    move-object/from16 v0, v31

    #@206
    move-object/from16 v1, v29

    #@208
    move/from16 v2, v38

    #@20a
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    #@20d
    goto :goto_6

    #@20e
    .line 724
    :cond_12
    const/16 v20, 0x0

    #@210
    .local v20, "dataScheme":Ljava/lang/String;
    goto :goto_7

    #@211
    .line 727
    .end local v20    # "dataScheme":Ljava/lang/String;
    :cond_13
    const/16 v24, 0x1

    #@213
    .local v24, "isHttpOrHttps":Z
    goto :goto_8

    #@214
    .line 726
    .end local v24    # "isHttpOrHttps":Z
    :cond_14
    const/16 v24, 0x0

    #@216
    .restart local v24    # "isHttpOrHttps":Z
    goto :goto_8

    #@217
    .line 730
    .end local v24    # "isHttpOrHttps":Z
    :cond_15
    const/16 v25, 0x0

    #@219
    .local v25, "isViewAction":Z
    goto :goto_9

    #@21a
    .line 731
    .end local v25    # "isViewAction":Z
    :cond_16
    const/16 v22, 0x0

    #@21c
    .local v22, "hasCategoryBrowsable":Z
    goto :goto_a

    #@21d
    .line 742
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v22    # "hasCategoryBrowsable":Z
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    .end local v38    # "userId":I
    :cond_17
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@220
    move-result-object v3

    #@221
    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    #@224
    move-result-object v5

    #@225
    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@228
    move-result-object v5

    #@229
    .line 745
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@22c
    move-result-object v9

    #@22d
    .line 744
    const/high16 v6, 0x10000

    #@22f
    .line 742
    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@232
    goto :goto_6

    #@233
    .line 746
    :catch_1
    move-exception v34

    #@234
    .line 747
    .local v34, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "ResolverActivity"

    #@237
    new-instance v5, Ljava/lang/StringBuilder;

    #@239
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23c
    const-string/jumbo v6, "Error calling setLastChosenActivity\n"

    #@23f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v5

    #@243
    move-object/from16 v0, v34

    #@245
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v5

    #@249
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24c
    move-result-object v5

    #@24d
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@250
    goto/16 :goto_6
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 357
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@2
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    #@9
    return-object v0
.end method

.method safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 6
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 762
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    #@3
    const/4 v4, -0x1

    #@4
    if-eq v3, v4, :cond_0

    #@6
    .line 763
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    #@8
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    const/4 v4, 0x1

    #@d
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    #@14
    .line 765
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    #@16
    if-nez v3, :cond_2

    #@18
    .line 766
    invoke-interface {p1, p0, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 767
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    #@21
    .line 769
    :cond_1
    return-void

    #@22
    .line 772
    :cond_2
    const/4 v3, 0x0

    #@23
    const/16 v4, -0x2710

    #@25
    :try_start_0
    invoke-interface {p1, p0, v3, v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_3

    #@2b
    .line 773
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 759
    :cond_3
    :goto_0
    return-void

    #@2f
    .line 775
    :catch_0
    move-exception v0

    #@30
    .line 778
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@33
    move-result-object v3

    #@34
    .line 779
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    #@37
    move-result-object v4

    #@38
    .line 778
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3b
    move-result-object v2

    #@3c
    .line 783
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "ResolverActivity"

    #@3f
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "Unable to launch as uid "

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    .line 784
    const-string/jumbo v5, " package "

    #@54
    .line 783
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 784
    const-string/jumbo v5, ", while running in "

    #@5f
    .line 783
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 785
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    .line 783
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    goto :goto_0

    #@73
    .line 780
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@74
    .line 781
    .local v1, "e2":Landroid/os/RemoteException;
    const-string/jumbo v2, "??"

    #@77
    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method sendVoiceChoicesIfNeeded()V
    .locals 6

    #@0
    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 342
    return-void

    #@7
    .line 346
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@9
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    #@c
    move-result v3

    #@d
    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@f
    .line 347
    .local v2, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    array-length v0, v2

    #@11
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@13
    .line 348
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@15
    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@1c
    move-result-object v3

    #@1d
    aput-object v3, v2, v1

    #@1f
    .line 347
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 351
    :cond_1
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@24
    .line 352
    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    #@26
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    #@2d
    const/4 v5, 0x0

    #@2e
    .line 351
    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    #@31
    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@33
    .line 353
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    #@36
    move-result-object v3

    #@37
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@39
    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    #@3c
    .line 339
    return-void
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 4
    .param p1, "intents"    # [Landroid/content/Intent;

    #@0
    .prologue
    .line 361
    if-eqz p1, :cond_0

    #@2
    .line 362
    const/4 v1, 0x0

    #@3
    array-length v2, p1

    #@4
    :goto_0
    if-ge v1, v2, :cond_0

    #@6
    aget-object v0, p1, v1

    #@8
    .line 363
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    .line 362
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 360
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    #@0
    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    #@2
    .line 428
    return-void
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    #@0
    .prologue
    .line 794
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 798
    new-instance v1, Landroid/content/Intent;

    #@2
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@5
    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@b
    move-result-object v1

    #@c
    .line 799
    const-string/jumbo v2, "package"

    #@f
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@11
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@17
    move-result-object v2

    #@18
    .line 798
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@1b
    move-result-object v1

    #@1c
    .line 800
    const/high16 v2, 0x80000

    #@1e
    .line 798
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@21
    move-result-object v0

    #@22
    .line 801
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    #@25
    .line 797
    return-void
.end method

.method startSelected(IZZ)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 590
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 591
    return-void

    #@8
    .line 593
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@a
    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    #@d
    move-result-object v0

    #@e
    .line 594
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    #@10
    if-eqz v2, :cond_1

    #@12
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_3

    #@1e
    .line 602
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@20
    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@23
    move-result-object v1

    #@24
    .line 603
    .local v1, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 604
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@2d
    .line 589
    :cond_2
    return-void

    #@2e
    .line 595
    .end local v1    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v2

    #@32
    .line 596
    const v3, 0x10404ab

    #@35
    .line 595
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    new-array v3, v6, [Ljava/lang/Object;

    #@3b
    .line 597
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3d
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@44
    move-result-object v4

    #@45
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    const/4 v5, 0x0

    #@4a
    aput-object v4, v3, v5

    #@4c
    .line 595
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    #@57
    .line 599
    return-void
.end method
