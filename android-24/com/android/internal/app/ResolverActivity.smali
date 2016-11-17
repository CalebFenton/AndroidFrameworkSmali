.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$1;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;
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

.field private mFilteredComponents:[Landroid/content/ComponentName;

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

.field protected mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

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
    .line 91
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@4
    .line 105
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    #@6
    .line 106
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    #@9
    .line 107
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    #@b
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    #@12
    .line 116
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    #@14
    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    #@17
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@19
    .line 91
    return-void
.end method

.method public static getLabelRes(Ljava/lang/String;)I
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    #@6
    return v0
.end method

.method private getReferrerPackageName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 424
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    #@4
    move-result-object v0

    #@5
    .line 425
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
    .line 426
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 428
    :cond_0
    return-object v3
.end method

.method private hasManagedProfile()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 589
    const-string/jumbo v5, "user"

    #@4
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v4

    #@8
    check-cast v4, Landroid/os/UserManager;

    #@a
    .line 590
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_0

    #@c
    .line 591
    return v6

    #@d
    .line 595
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
    .line 596
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
    .line 597
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
    .line 598
    const/4 v5, 0x1

    #@2e
    return v5

    #@2f
    .line 601
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@30
    .line 602
    .local v0, "e":Ljava/lang/SecurityException;
    return v6

    #@31
    .line 604
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
    .line 1857
    const/high16 v1, 0xfff0000

    #@3
    and-int/2addr p0, v1

    #@4
    .line 1858
    const/high16 v1, 0x300000

    #@6
    if-lt p0, v1, :cond_0

    #@8
    .line 1859
    const/high16 v1, 0x500000

    #@a
    if-gt p0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 1858
    :cond_0
    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@9
    .line 195
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@d
    .line 201
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
    .line 202
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
    .line 956
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
    .line 957
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
    .line 958
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
    .line 959
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
    .line 958
    goto :goto_0
.end method

.method private safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 6
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 828
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    #@3
    const/4 v4, -0x1

    #@4
    if-eq v3, v4, :cond_0

    #@6
    .line 829
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
    .line 831
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    #@16
    if-nez v3, :cond_2

    #@18
    .line 832
    invoke-interface {p1, p0, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 833
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    #@21
    .line 835
    :cond_1
    return-void

    #@22
    .line 838
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
    .line 839
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 825
    :cond_3
    :goto_0
    return-void

    #@2f
    .line 841
    :catch_0
    move-exception v0

    #@30
    .line 844
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@33
    move-result-object v3

    #@34
    .line 845
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    #@37
    move-result-object v4

    #@38
    .line 844
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3b
    move-result-object v2

    #@3c
    .line 849
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
    .line 850
    const-string/jumbo v5, " package "

    #@54
    .line 849
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 850
    const-string/jumbo v5, ", while running in "

    #@5f
    .line 849
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 851
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    .line 849
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
    .line 846
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@74
    .line 847
    .local v1, "e2":Landroid/os/RemoteException;
    const-string/jumbo v2, "??"

    #@77
    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    #@0
    .prologue
    .line 619
    const/4 v0, 0x0

    #@1
    .line 620
    .local v0, "enabled":Z
    if-eqz p1, :cond_0

    #@3
    .line 621
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@5
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    #@8
    move-result-object v1

    #@9
    .line 622
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@b
    const/4 v3, -0x2

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 623
    const/4 v0, 0x1

    #@f
    .line 626
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    #@11
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    #@14
    .line 618
    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .locals 5
    .param p1, "contentUserHint"    # I

    #@0
    .prologue
    .line 447
    const/4 v4, -0x2

    #@1
    if-eq p1, v4, :cond_1

    #@3
    .line 448
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6
    move-result v4

    #@7
    if-eq p1, v4, :cond_1

    #@9
    .line 449
    const-string/jumbo v4, "user"

    #@c
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/os/UserManager;

    #@12
    .line 450
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@15
    move-result-object v1

    #@16
    .line 451
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    #@18
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@1b
    move-result v0

    #@1c
    .line 453
    :goto_0
    invoke-virtual {v3}, Landroid/os/UserManager;->isManagedProfile()Z

    #@1f
    move-result v2

    #@20
    .line 454
    .local v2, "targetIsManaged":Z
    if-eqz v0, :cond_0

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 456
    :cond_0
    if-nez v0, :cond_1

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 457
    const v4, 0x1040461

    #@2b
    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    #@2d
    .line 446
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "targetIsManaged":Z
    .end local v3    # "userManager":Landroid/os/UserManager;
    :cond_1
    :goto_1
    return-void

    #@2e
    .line 452
    .restart local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Landroid/os/UserManager;
    :cond_2
    const/4 v0, 0x0

    #@2f
    .local v0, "originIsManaged":Z
    goto :goto_0

    #@30
    .line 455
    .end local v0    # "originIsManaged":Z
    .restart local v2    # "targetIsManaged":Z
    :cond_3
    const v4, 0x1040460

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
    .line 609
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v3

    #@5
    .line 610
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@9
    const/4 v5, 0x0

    #@a
    .line 609
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@d
    move-result-object v0

    #@e
    .line 611
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
    .line 612
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@17
    .line 613
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method


# virtual methods
.method bindProfileView()V
    .locals 4

    #@0
    .prologue
    .line 436
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@5
    move-result-object v0

    #@6
    .line 437
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v0, :cond_0

    #@8
    .line 438
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@e
    .line 439
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@10
    const v3, 0x1020349

    #@13
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/widget/TextView;

    #@19
    .line 440
    .local v1, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@20
    .line 435
    .end local v1    # "text":Landroid/widget/TextView;
    :goto_0
    return-void

    #@21
    .line 442
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@23
    const/16 v3, 0x8

    #@25
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@28
    goto :goto_0
.end method

.method public configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z
    .locals 11
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
            ">;Z)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 892
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
    if-eqz v0, :cond_1

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
    .line 891
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@16
    .line 895
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 896
    const v9, 0x10900c8

    #@21
    .line 897
    .local v9, "layoutId":I
    const/4 p4, 0x0

    #@22
    .line 901
    .end local p4    # "alwaysUseOption":Z
    :goto_1
    iput-boolean p4, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@24
    .line 903
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@26
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    #@29
    move-result v7

    #@2a
    .line 904
    .local v7, "count":I
    const/4 v0, 0x1

    #@2b
    if-ne v7, v0, :cond_3

    #@2d
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@2f
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@32
    move-result-object v0

    #@33
    if-nez v0, :cond_3

    #@35
    .line 906
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@37
    const/4 v1, 0x0

    #@38
    const/4 v2, 0x0

    #@39
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@3c
    move-result-object v10

    #@3d
    .line 907
    .local v10, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_3

    #@43
    .line 908
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    #@46
    .line 909
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@48
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    #@4b
    .line 910
    const/4 v0, 0x0

    #@4c
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@4e
    .line 911
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@51
    .line 912
    const/4 v0, 0x1

    #@52
    return v0

    #@53
    .line 892
    .end local v7    # "count":I
    .end local v9    # "layoutId":I
    .end local v10    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .restart local p4    # "alwaysUseOption":Z
    :cond_1
    const/4 v6, 0x1

    #@54
    goto :goto_0

    #@55
    .line 899
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    #@58
    move-result v9

    #@59
    .restart local v9    # "layoutId":I
    goto :goto_1

    #@5a
    .line 915
    .end local p4    # "alwaysUseOption":Z
    .restart local v7    # "count":I
    :cond_3
    if-lez v7, :cond_4

    #@5c
    .line 916
    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    #@5f
    .line 917
    const v0, 0x102034b

    #@62
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@65
    move-result-object v0

    #@66
    check-cast v0, Landroid/widget/AbsListView;

    #@68
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@6a
    .line 918
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@6c
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@6e
    invoke-virtual {p0, v0, v1, p4}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V

    #@71
    .line 928
    :goto_2
    const/4 v0, 0x0

    #@72
    return v0

    #@73
    .line 920
    :cond_4
    const v0, 0x10900c7

    #@76
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    #@79
    .line 922
    const v0, 0x1020004

    #@7c
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@7f
    move-result-object v8

    #@80
    check-cast v8, Landroid/widget/TextView;

    #@82
    .line 923
    .local v8, "empty":Landroid/widget/TextView;
    const/4 v0, 0x0

    #@83
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@86
    .line 925
    const v0, 0x102034b

    #@89
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@8c
    move-result-object v0

    #@8d
    check-cast v0, Landroid/widget/AbsListView;

    #@8f
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@91
    .line 926
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@93
    const/16 v1, 0x8

    #@95
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    #@98
    goto :goto_2
.end method

.method public createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
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
    .line 877
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
    .line 491
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 492
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@9
    .line 490
    :cond_0
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    #@0
    .prologue
    .line 499
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    #@2
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 504
    :goto_0
    return-object v1

    #@7
    .line 500
    :catch_0
    move-exception v0

    #@8
    .line 501
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    #@9
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 432
    const v0, 0x10900c7

    #@3
    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 660
    return-object p2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 420
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
    .line 479
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@7
    .line 480
    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@9
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@c
    move-result v0

    #@d
    .line 481
    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@f
    if-ne v1, v2, :cond_1

    #@11
    if-eqz p2, :cond_1

    #@13
    .line 482
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 479
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
    .line 484
    .restart local v0    # "named":Z
    :cond_1
    if-eqz v0, :cond_2

    #@1f
    .line 485
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
    .line 484
    :goto_1
    return-object v2

    #@35
    .line 486
    :cond_2
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    #@37
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    goto :goto_1
.end method

.method public final isComponentFiltered(Landroid/content/pm/ComponentInfo;)Z
    .locals 7
    .param p1, "component"    # Landroid/content/pm/ComponentInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 369
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mFilteredComponents:[Landroid/content/ComponentName;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 370
    return v3

    #@6
    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    #@9
    move-result-object v0

    #@a
    .line 374
    .local v0, "checkName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mFilteredComponents:[Landroid/content/ComponentName;

    #@c
    array-length v5, v4

    #@d
    move v2, v3

    #@e
    :goto_0
    if-ge v2, v5, :cond_2

    #@10
    aget-object v1, v4, v2

    #@12
    .line 375
    .local v1, "name":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_1

    #@18
    .line 376
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 374
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 379
    .end local v1    # "name":Landroid/content/ComponentName;
    :cond_2
    return v3
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 510
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 511
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
    .line 512
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@18
    .line 513
    return-object v0

    #@19
    .line 516
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    #@1c
    move-result v2

    #@1d
    .line 517
    .local v2, "iconRes":I
    if-eqz v2, :cond_1

    #@1f
    .line 518
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
    .line 519
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@2f
    .line 520
    return-object v0

    #@30
    .line 523
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    #@31
    .line 524
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "ResolverActivity"

    #@34
    const-string/jumbo v4, "Couldn\'t find resources for package"

    #@37
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    .line 526
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

.method public onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    .line 855
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result v0

    #@4
    .line 631
    .local v0, "id":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 632
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@a
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    #@d
    move-result v1

    #@e
    move v2, v1

    #@f
    .line 633
    :goto_0
    const v1, 0x10203e0

    #@12
    if-ne v0, v1, :cond_1

    #@14
    const/4 v1, 0x1

    #@15
    .line 634
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@17
    .line 631
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    #@1a
    .line 629
    return-void

    #@1b
    .line 632
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
    .line 633
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
    .line 208
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    #@5
    move-result-object v2

    #@6
    .line 209
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@9
    move-result-object v8

    #@a
    .line 210
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
    .line 211
    if-eqz v8, :cond_0

    #@19
    .line 212
    invoke-interface {v8}, Ljava/util/Set;->size()I

    #@1c
    move-result v0

    #@1d
    if-ne v0, v7, :cond_0

    #@1f
    .line 213
    const-string/jumbo v0, "android.intent.category.HOME"

    #@22
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 210
    if-eqz v0, :cond_0

    #@28
    .line 215
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    #@2a
    .line 218
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    #@2d
    .line 220
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
    .line 206
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
    .line 236
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v15, 0x1030494

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    #@8
    .line 237
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@b
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getContentUserHint()I

    #@e
    move-result v15

    #@f
    move-object/from16 v0, p0

    #@11
    invoke-direct {v0, v15}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    #@14
    .line 244
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@17
    move-result-object v15

    #@18
    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    #@1b
    move-result-object v16

    #@1c
    .line 244
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
    .line 250
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
    .line 252
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@37
    .line 253
    return-void

    #@38
    .line 246
    :catch_0
    move-exception v8

    #@39
    .line 247
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v15, -0x1

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput v15, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    #@3e
    goto :goto_0

    #@3f
    .line 256
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
    .line 258
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
    .line 259
    const/4 v15, 0x1

    #@5b
    move-object/from16 v0, p0

    #@5d
    iput-boolean v15, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@5f
    .line 261
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
    .line 262
    .local v5, "am":Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    #@6d
    move-result v15

    #@6e
    move-object/from16 v0, p0

    #@70
    iput v15, v0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    #@72
    .line 265
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
    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    #@8b
    move-result-object v12

    #@8c
    .line 269
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
    .line 271
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
    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z

    #@ac
    move-result v15

    #@ad
    if-eqz v15, :cond_2

    #@af
    .line 272
    return-void

    #@b0
    .line 275
    :cond_2
    const v15, 0x1020324

    #@b3
    move-object/from16 v0, p0

    #@b5
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@b8
    move-result-object v11

    #@b9
    check-cast v11, Lcom/android/internal/widget/ResolverDrawerLayout;

    #@bb
    .line 276
    .local v11, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v11, :cond_4

    #@bd
    .line 277
    new-instance v15, Lcom/android/internal/app/ResolverActivity$2;

    #@bf
    move-object/from16 v0, p0

    #@c1
    invoke-direct {v15, v0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    #@c4
    invoke-virtual {v11, v15}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    #@c7
    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    #@ca
    move-result v15

    #@cb
    if-eqz v15, :cond_3

    #@cd
    .line 284
    const/4 v15, 0x0

    #@ce
    invoke-virtual {v11, v15}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    #@d1
    .line 286
    :cond_3
    move-object/from16 v0, p0

    #@d3
    iput-object v11, v0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    #@d5
    .line 289
    :cond_4
    if-nez p3, :cond_5

    #@d7
    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@da
    move-result-object v15

    #@db
    move-object/from16 v0, p0

    #@dd
    move/from16 v1, p4

    #@df
    invoke-virtual {v0, v15, v1}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    #@e2
    move-result-object p3

    #@e3
    .line 292
    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e6
    move-result v15

    #@e7
    if-nez v15, :cond_8

    #@e9
    .line 293
    const v15, 0x1020016

    #@ec
    move-object/from16 v0, p0

    #@ee
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@f1
    move-result-object v14

    #@f2
    check-cast v14, Landroid/widget/TextView;

    #@f4
    .line 294
    .local v14, "titleView":Landroid/widget/TextView;
    if-eqz v14, :cond_6

    #@f6
    .line 295
    move-object/from16 v0, p3

    #@f8
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@fb
    .line 297
    :cond_6
    move-object/from16 v0, p0

    #@fd
    move-object/from16 v1, p3

    #@ff
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    #@102
    .line 300
    const v15, 0x102034a

    #@105
    move-object/from16 v0, p0

    #@107
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@10a
    move-result-object v13

    #@10b
    check-cast v13, Landroid/widget/ImageView;

    #@10d
    .line 301
    .local v13, "titleIcon":Landroid/widget/ImageView;
    if-eqz v13, :cond_8

    #@10f
    .line 302
    const/4 v4, 0x0

    #@110
    .line 304
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@113
    move-result v15

    #@114
    if-nez v15, :cond_7

    #@116
    .line 305
    move-object/from16 v0, p0

    #@118
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    #@11a
    const/16 v16, 0x0

    #@11c
    move/from16 v0, v16

    #@11e
    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@121
    move-result-object v4

    #@122
    .line 311
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7
    :goto_1
    if-eqz v4, :cond_8

    #@124
    .line 312
    move-object/from16 v0, p0

    #@126
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    #@128
    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@12b
    move-result-object v15

    #@12c
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@12f
    .line 317
    .end local v13    # "titleIcon":Landroid/widget/ImageView;
    .end local v14    # "titleView":Landroid/widget/TextView;
    :cond_8
    const v15, 0x1020006

    #@132
    move-object/from16 v0, p0

    #@134
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@137
    move-result-object v10

    #@138
    check-cast v10, Landroid/widget/ImageView;

    #@13a
    .line 318
    .local v10, "iconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    #@13c
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@13e
    invoke-virtual {v15}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@141
    move-result-object v9

    #@142
    .line 319
    .local v9, "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v10, :cond_9

    #@144
    if-eqz v9, :cond_9

    #@146
    .line 320
    new-instance v15, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    #@148
    move-object/from16 v0, p0

    #@14a
    invoke-direct {v15, v0, v9, v10}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    #@14d
    const/16 v16, 0x0

    #@14f
    move/from16 v0, v16

    #@151
    new-array v0, v0, [Ljava/lang/Void;

    #@153
    move-object/from16 v16, v0

    #@155
    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@158
    .line 323
    :cond_9
    if-nez p7, :cond_a

    #@15a
    move-object/from16 v0, p0

    #@15c
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@15e
    invoke-virtual {v15}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@161
    move-result v15

    #@162
    if-eqz v15, :cond_b

    #@164
    .line 324
    :cond_a
    const v15, 0x10203d2

    #@167
    move-object/from16 v0, p0

    #@169
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@16c
    move-result-object v6

    #@16d
    check-cast v6, Landroid/view/ViewGroup;

    #@16f
    .line 325
    .local v6, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v6, :cond_f

    #@171
    .line 326
    const/4 v15, 0x0

    #@172
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@175
    .line 327
    const v15, 0x10203e0

    #@178
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@17b
    move-result-object v15

    #@17c
    check-cast v15, Landroid/widget/Button;

    #@17e
    move-object/from16 v0, p0

    #@180
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    #@182
    .line 328
    const v15, 0x10203df

    #@185
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@188
    move-result-object v15

    #@189
    check-cast v15, Landroid/widget/Button;

    #@18b
    move-object/from16 v0, p0

    #@18d
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    #@18f
    .line 334
    .end local v6    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    #@191
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@193
    invoke-virtual {v15}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@196
    move-result v15

    #@197
    if-eqz v15, :cond_c

    #@199
    .line 335
    move-object/from16 v0, p0

    #@19b
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@19d
    invoke-virtual {v15}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    #@1a0
    move-result v15

    #@1a1
    const/16 v16, 0x1

    #@1a3
    const/16 v17, 0x0

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    move/from16 v1, v16

    #@1a9
    move/from16 v2, v17

    #@1ab
    invoke-direct {v0, v1, v15, v2}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    #@1ae
    .line 336
    move-object/from16 v0, p0

    #@1b0
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    #@1b2
    const/16 v16, 0x1

    #@1b4
    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setEnabled(Z)V

    #@1b7
    .line 339
    :cond_c
    const v15, 0x1020349

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    #@1bf
    move-result-object v15

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@1c4
    .line 340
    move-object/from16 v0, p0

    #@1c6
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@1c8
    if-eqz v15, :cond_d

    #@1ca
    .line 341
    move-object/from16 v0, p0

    #@1cc
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@1ce
    new-instance v16, Lcom/android/internal/app/ResolverActivity$3;

    #@1d0
    move-object/from16 v0, v16

    #@1d2
    move-object/from16 v1, p0

    #@1d4
    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    #@1d7
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@1da
    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    #@1dd
    .line 359
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    #@1e0
    move-result v15

    #@1e1
    if-eqz v15, :cond_e

    #@1e3
    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    #@1e6
    .line 235
    :cond_e
    return-void

    #@1e7
    .line 307
    .end local v9    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v10    # "iconView":Landroid/widget/ImageView;
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "titleIcon":Landroid/widget/ImageView;
    .restart local v14    # "titleView":Landroid/widget/TextView;
    :catch_1
    move-exception v7

    #@1e8
    .line 308
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v15, "ResolverActivity"

    #@1eb
    new-instance v16, Ljava/lang/StringBuilder;

    #@1ed
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1f0
    const-string/jumbo v17, "Could not find referrer package "

    #@1f3
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v16

    #@1f7
    move-object/from16 v0, v16

    #@1f9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v16

    #@1fd
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@200
    move-result-object v16

    #@201
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@204
    goto/16 :goto_1

    #@206
    .line 330
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "titleIcon":Landroid/widget/ImageView;
    .end local v14    # "titleView":Landroid/widget/TextView;
    .restart local v6    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v9    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .restart local v10    # "iconView":Landroid/widget/ImageView;
    :cond_f
    const/4 v15, 0x0

    #@207
    move-object/from16 v0, p0

    #@209
    iput-boolean v15, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@20b
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
    .line 230
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
    .line 229
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 567
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@3
    .line 568
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
    .line 569
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@f
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    #@12
    .line 566
    :cond_0
    return-void
.end method

.method public onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 6
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    #@0
    .prologue
    .line 933
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@3
    move-result v2

    #@4
    .line 934
    .local v2, "useHeader":Z
    instance-of v3, p1, Landroid/widget/ListView;

    #@6
    if-eqz v3, :cond_2

    #@8
    move-object v0, p1

    #@9
    check-cast v0, Landroid/widget/ListView;

    #@b
    .line 936
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@d
    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@10
    .line 938
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    #@12
    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    #@15
    .line 939
    .local v1, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@18
    .line 940
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    #@1b
    .line 942
    if-eqz p3, :cond_0

    #@1d
    .line 943
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    #@21
    .line 946
    :cond_0
    if-eqz v2, :cond_1

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 947
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@28
    move-result-object v3

    #@29
    .line 948
    const v4, 0x10900c6

    #@2c
    const/4 v5, 0x0

    #@2d
    .line 947
    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    #@34
    .line 932
    :cond_1
    return-void

    #@35
    .line 934
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
    .line 531
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    #@3
    .line 532
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 533
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
    .line 534
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@14
    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    #@19
    .line 537
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 538
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    #@20
    .line 530
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 575
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 576
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 577
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@9
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    #@c
    move-result v0

    #@d
    .line 578
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    #@e
    if-eq v0, v2, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    .line 579
    .local v1, "hasValidSelection":Z
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    #@13
    .line 580
    const/4 v2, 0x1

    #@14
    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    #@17
    .line 581
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    #@19
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    #@1c
    .line 582
    if-eqz v1, :cond_0

    #@1e
    .line 583
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    #@20
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    #@23
    .line 574
    .end local v0    # "checkedPos":I
    .end local v1    # "hasValidSelection":Z
    :cond_0
    return-void

    #@24
    .line 578
    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    #@25
    .restart local v1    # "hasValidSelection":Z
    goto :goto_0
.end method

.method public onSetupVoiceInteraction()V
    .locals 0

    #@0
    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    #@3
    .line 385
    return-void
.end method

.method protected onStop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 544
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    #@4
    .line 545
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 546
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    #@d
    .line 547
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    #@f
    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    #@12
    move-result-object v0

    #@13
    .line 550
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@16
    move-result v1

    #@17
    const/high16 v2, 0x10000000

    #@19
    and-int/2addr v1, v2

    #@1a
    if-eqz v1, :cond_1

    #@1c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 543
    :cond_1
    :goto_0
    return-void

    #@23
    .line 551
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    #@25
    if-nez v1, :cond_1

    #@27
    .line 559
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_1

    #@2d
    .line 560
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@30
    goto :goto_0
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 40
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    #@0
    .prologue
    .line 664
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@3
    move-result-object v36

    #@4
    .line 665
    .local v36, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_2

    #@6
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    #@9
    move-result-object v4

    #@a
    .line 667
    .local v4, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v4, :cond_10

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
    if-eqz v3, :cond_10

    #@1c
    .line 668
    :cond_0
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@20
    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@22
    if-eqz v3, :cond_10

    #@24
    .line 670
    new-instance v7, Landroid/content/IntentFilter;

    #@26
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@29
    .line 673
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    #@2c
    move-result-object v3

    #@2d
    if-eqz v3, :cond_3

    #@2f
    .line 674
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    #@32
    move-result-object v22

    #@33
    .line 679
    .local v22, "filterIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@36
    move-result-object v13

    #@37
    .line 680
    .local v13, "action":Ljava/lang/String;
    if-eqz v13, :cond_1

    #@39
    .line 681
    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3c
    .line 683
    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@3f
    move-result-object v17

    #@40
    .line 684
    .local v17, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v17, :cond_4

    #@42
    .line 685
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v16

    #@46
    .local v16, "cat$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_4

    #@4c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v15

    #@50
    check-cast v15, Ljava/lang/String;

    #@52
    .line 686
    .local v15, "cat":Ljava/lang/String;
    invoke-virtual {v7, v15}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@55
    goto :goto_2

    #@56
    .line 665
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "action":Ljava/lang/String;
    .end local v15    # "cat":Ljava/lang/String;
    .end local v16    # "cat$iterator":Ljava/util/Iterator;
    .end local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "filterIntent":Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x0

    #@57
    goto :goto_0

    #@58
    .line 676
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    :cond_3
    move-object/from16 v22, v4

    #@5a
    .restart local v22    # "filterIntent":Landroid/content/Intent;
    goto :goto_1

    #@5b
    .line 689
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    #@5e
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@61
    .line 691
    move-object/from16 v0, v36

    #@63
    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    #@65
    const/high16 v5, 0xfff0000

    #@67
    and-int v14, v3, v5

    #@69
    .line 692
    .local v14, "cat":I
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@6c
    move-result-object v19

    #@6d
    .line 693
    .local v19, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    #@6f
    if-ne v14, v3, :cond_5

    #@71
    .line 694
    move-object/from16 v0, v22

    #@73
    move-object/from16 v1, p0

    #@75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    #@78
    move-result-object v27

    #@79
    .line 695
    .local v27, "mimeType":Ljava/lang/String;
    if-eqz v27, :cond_5

    #@7b
    .line 697
    :try_start_0
    move-object/from16 v0, v27

    #@7d
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@80
    .line 704
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v27    # "mimeType":Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v19, :cond_6

    #@82
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    if-eqz v3, :cond_6

    #@88
    .line 708
    const/high16 v3, 0x600000

    #@8a
    if-ne v14, v3, :cond_8

    #@8c
    .line 709
    const-string/jumbo v3, "file"

    #@8f
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v3

    #@97
    if-nez v3, :cond_6

    #@99
    .line 710
    const-string/jumbo v3, "content"

    #@9c
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v3

    #@a4
    if-eqz v3, :cond_8

    #@a6
    .line 752
    :cond_6
    :goto_4
    if-eqz v7, :cond_10

    #@a8
    .line 753
    move-object/from16 v0, p0

    #@aa
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@ac
    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@ae
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@b1
    move-result v10

    #@b2
    .line 754
    .local v10, "N":I
    new-array v0, v10, [Landroid/content/ComponentName;

    #@b4
    move-object/from16 v37, v0

    #@b6
    .line 755
    .local v37, "set":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    #@b7
    .line 756
    .local v8, "bestMatch":I
    const/16 v24, 0x0

    #@b9
    .local v24, "i":I
    :goto_5
    move/from16 v0, v24

    #@bb
    if-ge v0, v10, :cond_f

    #@bd
    .line 757
    move-object/from16 v0, p0

    #@bf
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@c1
    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@c3
    move/from16 v0, v24

    #@c5
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c8
    move-result-object v3

    #@c9
    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@cb
    const/4 v5, 0x0

    #@cc
    invoke-virtual {v3, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@cf
    move-result-object v34

    #@d0
    .line 758
    .local v34, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    #@d2
    move-object/from16 v0, v34

    #@d4
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@d6
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@d8
    .line 759
    move-object/from16 v0, v34

    #@da
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@dc
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@de
    .line 758
    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e1
    aput-object v3, v37, v24

    #@e3
    .line 760
    move-object/from16 v0, v34

    #@e5
    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    #@e7
    if-le v3, v8, :cond_7

    #@e9
    move-object/from16 v0, v34

    #@eb
    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    #@ed
    .line 756
    :cond_7
    add-int/lit8 v24, v24, 0x1

    #@ef
    goto :goto_5

    #@f0
    .line 698
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v24    # "i":I
    .end local v34    # "r":Landroid/content/pm/ResolveInfo;
    .end local v37    # "set":[Landroid/content/ComponentName;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v27    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v21

    #@f1
    .line 699
    .local v21, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v3, "ResolverActivity"

    #@f4
    move-object/from16 v0, v21

    #@f6
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f9
    .line 700
    const/4 v7, 0x0

    #@fa
    .local v7, "filter":Landroid/content/IntentFilter;
    goto :goto_3

    #@fb
    .line 711
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v21    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v27    # "mimeType":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@fe
    move-result-object v3

    #@ff
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@102
    .line 715
    move-object/from16 v0, v36

    #@104
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@106
    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    #@109
    move-result-object v29

    #@10a
    .line 716
    .local v29, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v29, :cond_a

    #@10c
    .line 717
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@10f
    move-result-object v38

    #@110
    .line 718
    .local v38, "ssp":Ljava/lang/String;
    :cond_9
    if-eqz v38, :cond_a

    #@112
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    #@115
    move-result v3

    #@116
    if-eqz v3, :cond_a

    #@118
    .line 719
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11b
    move-result-object v28

    #@11c
    check-cast v28, Landroid/os/PatternMatcher;

    #@11e
    .line 720
    .local v28, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v28

    #@120
    move-object/from16 v1, v38

    #@122
    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    #@125
    move-result v3

    #@126
    if-eqz v3, :cond_9

    #@128
    .line 721
    invoke-virtual/range {v28 .. v28}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@12b
    move-result-object v3

    #@12c
    invoke-virtual/range {v28 .. v28}, Landroid/os/PatternMatcher;->getType()I

    #@12f
    move-result v5

    #@130
    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@133
    .line 726
    .end local v28    # "p":Landroid/os/PatternMatcher;
    .end local v38    # "ssp":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v36

    #@135
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@137
    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    #@13a
    move-result-object v12

    #@13b
    .line 727
    .local v12, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_c

    #@13d
    .line 728
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@140
    move-result v3

    #@141
    if-eqz v3, :cond_c

    #@143
    .line 729
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@146
    move-result-object v11

    #@147
    check-cast v11, Landroid/content/IntentFilter$AuthorityEntry;

    #@149
    .line 730
    .local v11, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v19

    #@14b
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    #@14e
    move-result v3

    #@14f
    if-ltz v3, :cond_b

    #@151
    .line 731
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    #@154
    move-result v33

    #@155
    .line 732
    .local v33, "port":I
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@158
    move-result-object v5

    #@159
    .line 733
    if-ltz v33, :cond_e

    #@15b
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15e
    move-result-object v3

    #@15f
    .line 732
    :goto_6
    invoke-virtual {v7, v5, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    #@162
    .line 738
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v33    # "port":I
    :cond_c
    move-object/from16 v0, v36

    #@164
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@166
    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    #@169
    move-result-object v29

    #@16a
    .line 739
    if-eqz v29, :cond_6

    #@16c
    .line 740
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@16f
    move-result-object v31

    #@170
    .line 741
    .local v31, "path":Ljava/lang/String;
    :cond_d
    if-eqz v31, :cond_6

    #@172
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    #@175
    move-result v3

    #@176
    if-eqz v3, :cond_6

    #@178
    .line 742
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17b
    move-result-object v28

    #@17c
    check-cast v28, Landroid/os/PatternMatcher;

    #@17e
    .line 743
    .restart local v28    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v28

    #@180
    move-object/from16 v1, v31

    #@182
    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    #@185
    move-result v3

    #@186
    if-eqz v3, :cond_d

    #@188
    .line 744
    invoke-virtual/range {v28 .. v28}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@18b
    move-result-object v3

    #@18c
    invoke-virtual/range {v28 .. v28}, Landroid/os/PatternMatcher;->getType()I

    #@18f
    move-result v5

    #@190
    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    #@193
    goto/16 :goto_4

    #@195
    .line 733
    .end local v28    # "p":Landroid/os/PatternMatcher;
    .end local v31    # "path":Ljava/lang/String;
    .restart local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v33    # "port":I
    :cond_e
    const/4 v3, 0x0

    #@196
    goto :goto_6

    #@197
    .line 762
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v29    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v33    # "port":I
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v24    # "i":I
    .restart local v37    # "set":[Landroid/content/ComponentName;
    :cond_f
    if-eqz p2, :cond_18

    #@199
    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    #@19c
    move-result v39

    #@19d
    .line 764
    .local v39, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1a0
    move-result-object v32

    #@1a1
    .line 767
    .local v32, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@1a4
    move-result-object v3

    #@1a5
    move-object/from16 v0, v32

    #@1a7
    move-object/from16 v1, v37

    #@1a9
    invoke-virtual {v0, v7, v8, v1, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    #@1ac
    .line 769
    move-object/from16 v0, v36

    #@1ae
    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    #@1b0
    if-eqz v3, :cond_12

    #@1b2
    .line 771
    move-object/from16 v0, v32

    #@1b4
    move/from16 v1, v39

    #@1b6
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    #@1b9
    move-result-object v30

    #@1ba
    .line 772
    .local v30, "packageName":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1bd
    move-result v3

    #@1be
    if-eqz v3, :cond_10

    #@1c0
    .line 773
    move-object/from16 v0, v36

    #@1c2
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1c4
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1c6
    move-object/from16 v0, v32

    #@1c8
    move/from16 v1, v39

    #@1ca
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    #@1cd
    .line 808
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":I
    .end local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "data":Landroid/net/Uri;
    .end local v22    # "filterIntent":Landroid/content/Intent;
    .end local v24    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .end local v32    # "pm":Landroid/content/pm/PackageManager;
    .end local v37    # "set":[Landroid/content/ComponentName;
    .end local v39    # "userId":I
    :cond_10
    :goto_7
    if-eqz p1, :cond_11

    #@1cf
    .line 809
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    #@1d2
    .line 811
    :cond_11
    const/4 v3, 0x1

    #@1d3
    return v3

    #@1d4
    .line 777
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v14    # "cat":I
    .restart local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "data":Landroid/net/Uri;
    .restart local v22    # "filterIntent":Landroid/content/Intent;
    .restart local v24    # "i":I
    .restart local v32    # "pm":Landroid/content/pm/PackageManager;
    .restart local v37    # "set":[Landroid/content/ComponentName;
    .restart local v39    # "userId":I
    :cond_12
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@1d7
    move-result-object v18

    #@1d8
    .line 778
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1db
    move-result-object v30

    #@1dc
    .line 779
    .restart local v30    # "packageName":Ljava/lang/String;
    if-eqz v19, :cond_13

    #@1de
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@1e1
    move-result-object v20

    #@1e2
    .line 781
    .local v20, "dataScheme":Ljava/lang/String;
    :goto_8
    if-eqz v20, :cond_15

    #@1e4
    .line 782
    const-string/jumbo v3, "http"

    #@1e7
    move-object/from16 v0, v20

    #@1e9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ec
    move-result v3

    #@1ed
    if-nez v3, :cond_14

    #@1ef
    .line 783
    const-string/jumbo v3, "https"

    #@1f2
    move-object/from16 v0, v20

    #@1f4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f7
    move-result v25

    #@1f8
    .line 785
    :goto_9
    if-eqz v13, :cond_16

    #@1fa
    const-string/jumbo v3, "android.intent.action.VIEW"

    #@1fd
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@200
    move-result v26

    #@201
    .line 786
    :goto_a
    if-eqz v17, :cond_17

    #@203
    .line 787
    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    #@206
    move-object/from16 v0, v17

    #@208
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@20b
    move-result v23

    #@20c
    .line 789
    :goto_b
    if-eqz v25, :cond_10

    #@20e
    if-eqz v26, :cond_10

    #@210
    if-eqz v23, :cond_10

    #@212
    .line 791
    const/4 v3, 0x2

    #@213
    .line 790
    move-object/from16 v0, v32

    #@215
    move-object/from16 v1, v30

    #@217
    move/from16 v2, v39

    #@219
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    #@21c
    goto :goto_7

    #@21d
    .line 779
    .end local v20    # "dataScheme":Ljava/lang/String;
    :cond_13
    const/16 v20, 0x0

    #@21f
    goto :goto_8

    #@220
    .line 782
    .restart local v20    # "dataScheme":Ljava/lang/String;
    :cond_14
    const/16 v25, 0x1

    #@222
    .local v25, "isHttpOrHttps":Z
    goto :goto_9

    #@223
    .line 781
    .end local v25    # "isHttpOrHttps":Z
    :cond_15
    const/16 v25, 0x0

    #@225
    .restart local v25    # "isHttpOrHttps":Z
    goto :goto_9

    #@226
    .line 785
    .end local v25    # "isHttpOrHttps":Z
    :cond_16
    const/16 v26, 0x0

    #@228
    .local v26, "isViewAction":Z
    goto :goto_a

    #@229
    .line 786
    .end local v26    # "isViewAction":Z
    :cond_17
    const/16 v23, 0x0

    #@22b
    .local v23, "hasCategoryBrowsable":Z
    goto :goto_b

    #@22c
    .line 797
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v20    # "dataScheme":Ljava/lang/String;
    .end local v23    # "hasCategoryBrowsable":Z
    .end local v30    # "packageName":Ljava/lang/String;
    .end local v32    # "pm":Landroid/content/pm/PackageManager;
    .end local v39    # "userId":I
    :cond_18
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@22f
    move-result-object v3

    #@230
    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    #@233
    move-result-object v5

    #@234
    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@237
    move-result-object v5

    #@238
    .line 800
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@23b
    move-result-object v9

    #@23c
    .line 799
    const/high16 v6, 0x10000

    #@23e
    .line 797
    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@241
    goto :goto_7

    #@242
    .line 801
    :catch_1
    move-exception v35

    #@243
    .line 802
    .local v35, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "ResolverActivity"

    #@246
    new-instance v5, Ljava/lang/StringBuilder;

    #@248
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24b
    const-string/jumbo v6, "Error calling setLastChosenActivity\n"

    #@24e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v5

    #@252
    move-object/from16 v0, v35

    #@254
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v5

    #@258
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25b
    move-result-object v5

    #@25c
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25f
    goto/16 :goto_7
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 408
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

.method public safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 1
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    .line 817
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    #@3
    .line 819
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 821
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    #@9
    .line 814
    return-void

    #@a
    .line 820
    :catchall_0
    move-exception v0

    #@b
    .line 821
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    #@e
    .line 820
    throw v0
.end method

.method public sendVoiceChoicesIfNeeded()V
    .locals 6

    #@0
    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 393
    return-void

    #@7
    .line 397
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@9
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    #@c
    move-result v3

    #@d
    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@f
    .line 398
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
    .line 399
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
    .line 398
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 402
    :cond_1
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@24
    .line 403
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
    .line 402
    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    #@31
    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@33
    .line 404
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    #@36
    move-result-object v3

    #@37
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@39
    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    #@3c
    .line 390
    return-void
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 4
    .param p1, "intents"    # [Landroid/content/Intent;

    #@0
    .prologue
    .line 412
    if-eqz p1, :cond_0

    #@2
    .line 413
    const/4 v1, 0x0

    #@3
    array-length v2, p1

    #@4
    :goto_0
    if-ge v1, v2, :cond_0

    #@6
    aget-object v0, p1, v1

    #@8
    .line 414
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    .line 413
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 411
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public final setFilteredComponents([Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "components"    # [Landroid/content/ComponentName;

    #@0
    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mFilteredComponents:[Landroid/content/ComponentName;

    #@2
    .line 364
    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    #@0
    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    #@2
    .line 474
    return-void
.end method

.method public shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    .line 864
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public shouldGetActivityMetadata()Z
    .locals 1

    #@0
    .prologue
    .line 860
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 868
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
    .line 869
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
    .line 868
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@1b
    move-result-object v1

    #@1c
    .line 870
    const/high16 v2, 0x80000

    #@1e
    .line 868
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@21
    move-result-object v0

    #@22
    .line 871
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    #@25
    .line 867
    return-void
.end method

.method public startSelected(IZZ)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 638
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 639
    return-void

    #@8
    .line 641
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@a
    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    #@d
    move-result-object v0

    #@e
    .line 642
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
    .line 650
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@20
    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@23
    move-result-object v1

    #@24
    .line 651
    .local v1, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 652
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@2d
    .line 637
    :cond_2
    return-void

    #@2e
    .line 643
    .end local v1    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v2

    #@32
    .line 644
    const v3, 0x10404e6

    #@35
    .line 643
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    new-array v3, v6, [Ljava/lang/Object;

    #@3b
    .line 645
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
    .line 643
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
    .line 647
    return-void
.end method
