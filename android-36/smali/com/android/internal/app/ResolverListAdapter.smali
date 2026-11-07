.class public Lcom/android/internal/app/ResolverListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;,
        Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;,
        Lcom/android/internal/app/ResolverListAdapter$ViewHolder;,
        Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;,
        Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;,
        Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;,
        Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResolverListAdapter"

.field private static blacklist sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;


# instance fields
.field private final blacklist mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mContext:Landroid/content/Context;

.field blacklist mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFilterLastUsed:Z

.field private final blacklist mIconDpi:I

.field private final blacklist mIconLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mInflater:Landroid/view/LayoutInflater;

.field private final blacklist mInitialIntents:[Landroid/content/Intent;

.field private final blacklist mInitialIntentsUserSpace:Landroid/os/UserHandle;

.field private final blacklist mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsAudioCaptureDevice:Z

.field private blacklist mIsTabLoaded:Z

.field private final blacklist mLabelLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mLastChosen:Landroid/content/pm/ResolveInfo;

.field private blacklist mLastChosenPosition:I

.field private blacklist mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mPlaceholderCount:I

.field private final blacklist mPm:Landroid/content/pm/PackageManager;

.field private blacklist mPostListReadyRunnable:Ljava/lang/Runnable;

.field final blacklist mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

.field blacklist mResolverListController:Lcom/android/internal/app/ResolverListController;

.field private blacklist mUnfilteredResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsAudioCaptureDevice(Lcom/android/internal/app/ResolverListAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsAudioCaptureDevice:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPostListReadyRunnable(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;
    .registers 1

    invoke-static {}, Lcom/android/internal/app/ResolverListAdapter;->getSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;ZLandroid/os/UserHandle;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
    .param p7, "resolverListCommunicator"    # Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
    .param p8, "isAudioCaptureDevice"    # Z
    .param p9, "initialIntentsUserSpace"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Lcom/android/internal/app/ResolverListController;",
            "Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;",
            "Z",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 103
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconLoaders:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLabelLoaders:Ljava/util/Map;

    .line 104
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    .line 106
    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 107
    iput-object p4, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 111
    iput-boolean p5, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    .line 112
    iput-object p6, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 113
    iput-object p7, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 114
    iput-boolean p8, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsAudioCaptureDevice:Z

    .line 115
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 116
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    .line 117
    iput-object p9, p0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    .line 118
    return-void
.end method

.method private blacklist addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 4
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 542
    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 543
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_4a

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 545
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add DisplayResolveInfo component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intent component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    const-string v1, "ResolverListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_4a
    return-void
.end method

.method private blacklist addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V
    .registers 11
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 500
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v0

    .line 501
    .local v0, "count":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    .line 502
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 503
    .local v1, "add":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 504
    invoke-interface {v3, v4, v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 505
    .local v3, "replaceIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 506
    invoke-interface {v6}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v6

    .line 505
    invoke-interface {v4, v5, v6}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 508
    .local v4, "defaultIntent":Landroid/content/Intent;
    new-instance v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 509
    if-eqz v3, :cond_29

    move-object v6, v3

    goto :goto_2a

    :cond_29
    move-object v6, v4

    :goto_2a
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v7

    invoke-direct {v5, v2, v1, v6, v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 510
    .local v5, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setPinned(Z)V

    .line 511
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pinned item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ResolverListAdapter"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_58
    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 515
    if-ne v3, v2, :cond_6b

    .line 518
    const/4 v6, 0x1

    .local v6, "i":I
    move v7, v0

    .local v7, "n":I
    :goto_5f
    if-ge v6, v7, :cond_6b

    .line 519
    invoke-virtual {p1, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v8

    .line 520
    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v5, v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    .line 518
    .end local v8    # "altIntent":Landroid/content/Intent;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 523
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_6b
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 524
    return-void
.end method

.method private blacklist cancelTasks(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/AsyncTask;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 715
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    .line 716
    .local v1, "task":Landroid/os/AsyncTask;, "TT;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 717
    .end local v1    # "task":Landroid/os/AsyncTask;, "TT;"
    goto :goto_4

    .line 718
    :cond_15
    return-void
.end method

.method private static blacklist getFirstNonCurrentUserResolvedComponentInfo(Ljava/util/List;)Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;"
        }
    .end annotation

    .line 810
    .local p0, "resolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 811
    return-object v0

    .line 814
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 815
    .local v2, "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 816
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget v4, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1f

    .line 817
    return-object v2

    .line 819
    .end local v2    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1f
    goto :goto_8

    .line 820
    :cond_20
    return-object v0
.end method

.method private static blacklist getSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;
    .registers 6

    .line 721
    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v0, :cond_3c

    .line 723
    const/16 v0, 0x7f

    .line 724
    .local v0, "grayValue":I
    const/high16 v1, 0x3f000000    # 0.5f

    .line 726
    .local v1, "scale":F
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 727
    .local v2, "tempBrightnessMatrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 728
    .local v3, "mat":[F
    const/4 v4, 0x0

    aput v1, v3, v4

    .line 729
    const/4 v4, 0x6

    aput v1, v3, v4

    .line 730
    const/16 v4, 0xc

    aput v1, v3, v4

    .line 731
    const/4 v4, 0x4

    int-to-float v5, v0

    aput v5, v3, v4

    .line 732
    const/16 v4, 0x9

    int-to-float v5, v0

    aput v5, v3, v4

    .line 733
    const/16 v4, 0xe

    int-to-float v5, v0

    aput v5, v3, v4

    .line 735
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 736
    .local v4, "matrix":Landroid/graphics/ColorMatrix;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 737
    invoke-virtual {v4, v2}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 738
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v5, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 740
    .end local v0    # "grayValue":I
    .end local v1    # "scale":F
    .end local v2    # "tempBrightnessMatrix":Landroid/graphics/ColorMatrix;
    .end local v3    # "mat":[F
    .end local v4    # "matrix":Landroid/graphics/ColorMatrix;
    :cond_3c
    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-object v0
.end method

.method private blacklist loadLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 688
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLabelLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    .line 689
    .local v0, "task":Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;
    if-nez v0, :cond_19

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->createLoadLabelTask(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLabelLoaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 694
    :cond_19
    return-void
.end method

.method private static blacklist makeOtherProfileDisplayResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;I)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolvedComponentInfo"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "resolverListCommunicator"    # Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
    .param p4, "iconDpi"    # I

    .line 834
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 836
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 838
    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    .line 836
    invoke-interface {p3, v1, v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    .line 839
    .local v8, "pOrigIntent":Landroid/content/Intent;
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 841
    invoke-interface {p3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 839
    invoke-interface {p3, v1, v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    .line 843
    .local v9, "replacementIntent":Landroid/content/Intent;
    new-instance v7, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-direct {v7, p0, p4, v3}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    .line 846
    .local v7, "presentationGetter":Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    new-instance v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 847
    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    .line 849
    invoke-virtual {v3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 850
    invoke-virtual {v3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 851
    if-eqz v8, :cond_30

    move-object v6, v8

    goto :goto_31

    :cond_30
    move-object v6, v9

    :goto_31
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 846
    return-object v1
.end method

.method private blacklist updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 528
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_8

    .line 529
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 530
    return-void

    .line 532
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 535
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 537
    :cond_36
    return-void
.end method


# virtual methods
.method protected blacklist alwaysShowSubLabel()Z
    .registers 2

    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist bindView(ILandroid/view/View;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/app/ResolverListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    .line 645
    return-void
.end method

.method protected blacklist createLoadLabelTask(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;
    .registers 3
    .param p1, "info"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 697
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    return-object v0
.end method

.method blacklist createSortingTask(Z)Landroid/os/AsyncTask;
    .registers 3
    .param p1, "doPostProcessing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/os/AsyncTask<",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Ljava/lang/Void;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;>;"
        }
    .end annotation

    .line 400
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverListAdapter$1;-><init>(Lcom/android/internal/app/ResolverListAdapter;Z)V

    return-object v0
.end method

.method public final blacklist createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 633
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 634
    .local v1, "holder":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 635
    return-object v0
.end method

.method blacklist finishRebuildingListWithFilteredResults(Ljava/util/List;Z)Z
    .registers 7
    .param p2, "doPostProcessing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 378
    .local p1, "filteredResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_c

    goto :goto_2c

    .line 385
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 386
    .local v2, "placeholderCount":I
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->useLayoutWithDefault()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 387
    add-int/lit8 v2, v2, -0x1

    .line 389
    :cond_1a
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverListAdapter;->setPlaceholderCount(I)V

    .line 392
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZ)V

    .line 393
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverListAdapter;->createSortingTask(Z)Landroid/os/AsyncTask;

    move-result-object v3

    new-array v0, v0, [Ljava/util/List;

    aput-object p1, v0, v1

    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return v1

    .line 380
    .end local v2    # "placeholderCount":I
    :cond_2c
    :goto_2c
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->setPlaceholderCount(I)V

    .line 381
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->processSortedList(Ljava/util/List;Z)V

    .line 382
    return v0
.end method

.method public whitelist getCount()I
    .registers 3

    .line 585
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    .line 586
    :cond_d
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_16

    .line 585
    :cond_14
    :goto_14
    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    .line 586
    :goto_16
    nop

    .line 587
    .local v0, "totalSize":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_21

    .line 588
    add-int/lit8 v0, v0, -0x1

    .line 590
    :cond_21
    return v0
.end method

.method public blacklist getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 3
    .param p1, "index"    # I

    .line 619
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getDisplayResolveInfoCount()I
    .registers 2

    .line 614
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFilteredItem()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 3

    .line 138
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_13

    .line 140
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0

    .line 142
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFilteredPosition()I
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_b

    .line 151
    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    return v0

    .line 153
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method blacklist getInitialRebuiltResolveList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v0, :cond_17

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 273
    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 272
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 275
    return-object v0

    .line 277
    .end local v0    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_17
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 279
    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetActivityMetadata()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 280
    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetOnlyDefaultActivities()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    .line 277
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/ResolverListController;->getResolversForIntent(ZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getIntents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 3
    .param p1, "position"    # I

    .line 599
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-lt p1, v0, :cond_e

    .line 600
    add-int/lit8 p1, p1, 0x1

    .line 602
    :cond_e
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1f

    .line 603
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 605
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 610
    int-to-long v0, p1

    return-wide v0
.end method

.method public blacklist getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getPlaceholderCount()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    return v0
.end method

.method public blacklist getResolverListController()Lcom/android/internal/app/ResolverListController;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    return-object v0
.end method

.method protected blacklist getResolversForUser(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 781
    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetActivityMetadata()Z

    move-result v2

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 782
    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetOnlyDefaultActivities()Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    .line 780
    const/4 v1, 0x1

    move-object v5, p1

    .end local p1    # "userHandle":Landroid/os/UserHandle;
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUser(ZZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F
    .registers 3
    .param p1, "target"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 161
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .registers 3
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 168
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist getUnfilteredCount()I
    .registers 2

    .line 594
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method blacklist getUnfilteredResolveList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 776
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 623
    move-object v0, p2

    .line 624
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_7

    .line 625
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 627
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/app/ResolverListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    .line 628
    return-object v0
.end method

.method public blacklist handlePackagesChanged()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 126
    return-void
.end method

.method public blacklist hasFilteredItem()Z
    .registers 2

    .line 157
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected blacklist isTabLoaded()Z
    .registers 2

    .line 791
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    return v0
.end method

.method blacklist loadFilteredItemIconTaskAsync(Landroid/widget/ImageView;)V
    .registers 5
    .param p1, "iconView"    # Landroid/widget/ImageView;

    .line 758
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredItem()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 759
    .local v0, "iconInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-eqz p1, :cond_13

    if-eqz v0, :cond_13

    .line 760
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/app/ResolverListAdapter$3;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 770
    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverListAdapter$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 772
    :cond_13
    return-void
.end method

.method protected final blacklist loadIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 675
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    .line 676
    .local v0, "task":Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
    if-nez v0, :cond_1b

    .line 677
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    move-object v0, v1

    .line 678
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 681
    :cond_1b
    return-void
.end method

.method blacklist loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 754
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method blacklist makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
    .registers 5
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 744
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)V

    return-object v0
.end method

.method blacklist makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    .registers 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 748
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    return-object v0
.end method

.method protected blacklist markTabLoaded()V
    .registers 2

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    .line 796
    return-void
.end method

.method protected blacklist onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p3, "position"    # I

    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 649
    .local v0, "holder":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    const/4 v1, 0x0

    const-string v2, ""

    if-nez p2, :cond_1d

    .line 650
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 651
    const v5, 0x108091f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 650
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    invoke-virtual {v0, v2, v2, v1}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 653
    return-void

    .line 656
    :cond_1d
    instance-of v3, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v3, :cond_4d

    .line 657
    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 658
    .local v3, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayLabel()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 659
    nop

    .line 660
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 661
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v2

    .line 662
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->alwaysShowSubLabel()Z

    move-result v4

    .line 659
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_41

    .line 664
    :cond_3b
    invoke-virtual {v0, v2, v2, v1}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 665
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverListAdapter;->loadLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 667
    :goto_41
    invoke-virtual {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 668
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 669
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverListAdapter;->loadIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 672
    .end local v3    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_4d
    return-void
.end method

.method blacklist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 639
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090129

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 702
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    .line 705
    :cond_12
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    if-eqz v0, :cond_1b

    .line 706
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->destroy()V

    .line 708
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverListAdapter;->cancelTasks(Ljava/util/Collection;)V

    .line 709
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLabelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverListAdapter;->cancelTasks(Ljava/util/Collection;)V

    .line 710
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 711
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLabelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 712
    return-void
.end method

.method protected blacklist onIconLoaded(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 684
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 685
    return-void
.end method

.method blacklist performPrimaryResolveListFiltering(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 304
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    if-nez v0, :cond_14

    if-nez p1, :cond_7

    goto :goto_14

    .line 308
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 309
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ResolverListController;->filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 310
    .local v0, "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-nez v0, :cond_12

    move-object v1, p1

    goto :goto_13

    :cond_12
    move-object v1, v0

    :goto_13
    return-object v1

    .line 305
    .end local v0    # "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_14
    :goto_14
    return-object p1
.end method

.method blacklist performSecondaryResolveListFiltering(Ljava/util/List;Z)Ljava/util/List;
    .registers 4
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 328
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_10

    .line 331
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ResolverListController;->filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 329
    :cond_10
    :goto_10
    return-object p1
.end method

.method blacklist postListReadyRunnable(ZZ)V
    .registers 5
    .param p1, "doPostProcessing"    # Z
    .param p2, "rebuildCompleted"    # Z

    .line 486
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_16

    .line 487
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter$2;-><init>(Lcom/android/internal/app/ResolverListAdapter;ZZ)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    .line 495
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    :cond_16
    return-void
.end method

.method protected blacklist processSortedList(Ljava/util/List;Z)V
    .registers 17
    .param p2, "doPostProcessing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 422
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 423
    .local v1, "n":I
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResolverListAdapter#processSortedList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 424
    const/4 v2, 0x1

    if-eqz v1, :cond_da

    .line 426
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v3, :cond_c0

    .line 427
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v4, v4

    if-ge v3, v4, :cond_c0

    .line 428
    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v6, v4, v3

    .line 429
    .local v6, "ii":Landroid/content/Intent;
    if-nez v6, :cond_34

    .line 430
    goto/16 :goto_bc

    .line 433
    :cond_34
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/content/Intent;

    if-ne v4, v5, :cond_3e

    move-object v4, v6

    goto :goto_43

    :cond_3e
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 434
    .local v4, "rii":Landroid/content/Intent;
    :goto_43
    iget-object v5, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 435
    .local v12, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v12, :cond_64

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ResolverListAdapter"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    goto :goto_bc

    .line 439
    :cond_64
    new-instance v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v7}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 440
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 441
    iget-object v5, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 442
    const-string/jumbo v8, "user"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/os/UserManager;

    .line 443
    .local v13, "userManager":Landroid/os/UserManager;
    instance-of v5, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v5, :cond_9a

    .line 444
    move-object v5, v6

    check-cast v5, Landroid/content/pm/LabeledIntent;

    .line 445
    .local v5, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v5}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 446
    invoke-virtual {v5}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v8

    iput v8, v7, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 447
    invoke-virtual {v5}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 448
    invoke-virtual {v5}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v8

    iput v8, v7, Landroid/content/pm/ResolveInfo;->icon:I

    .line 449
    iget v8, v7, Landroid/content/pm/ResolveInfo;->icon:I

    iput v8, v7, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 451
    .end local v5    # "li":Landroid/content/pm/LabeledIntent;
    :cond_9a
    invoke-virtual {v13}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 452
    iput-boolean v2, v7, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 453
    iput v0, v7, Landroid/content/pm/ResolveInfo;->icon:I

    .line 456
    :cond_a4
    iget-object v5, p0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    iput-object v5, v7, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 457
    new-instance v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v8, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 458
    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v11

    move-object v10, v6

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 457
    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 427
    .end local v4    # "rii":Landroid/content/Intent;
    .end local v6    # "ii":Landroid/content/Intent;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v13    # "userManager":Landroid/os/UserManager;
    :goto_bc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_27

    .line 463
    .end local v3    # "i":I
    :cond_c0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 464
    .local v4, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v4, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 465
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_d9

    .line 466
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V

    .line 468
    .end local v4    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_d9
    goto :goto_c4

    .line 471
    :cond_da
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->sendVoiceChoicesIfNeeded()V

    .line 472
    move/from16 v0, p2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZ)V

    .line 473
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    .line 474
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 475
    return-void
.end method

.method protected blacklist rebuildList(Z)Z
    .registers 7
    .param p1, "doPostProcessing"    # Z

    .line 204
    const-string v0, "ResolverListAdapter#rebuildList"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    .line 207
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getInitialRebuiltResolveList()Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->performPrimaryResolveListFiltering(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    .line 225
    nop

    .line 226
    invoke-static {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFirstNonCurrentUserResolvedComponentInfo(Ljava/util/List;)Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    move-result-object v2

    .line 227
    .local v2, "otherProfileInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverListAdapter;->updateOtherProfileTreatment(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V

    .line 228
    if-eqz v2, :cond_27

    .line 229
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 249
    :cond_27
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    if-ne v3, v1, :cond_2c

    const/4 v0, 0x1

    .line 250
    .local v0, "needsCopyOfUnfiltered":Z
    :cond_2c
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverListAdapter;->performSecondaryResolveListFiltering(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 252
    .local v3, "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz v3, :cond_34

    .line 255
    iput-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    .line 258
    :cond_34
    nop

    .line 259
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/ResolverListAdapter;->finishRebuildingListWithFilteredResults(Ljava/util/List;Z)Z

    move-result v4

    .line 260
    .local v4, "result":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 261
    return v4
.end method

.method public blacklist resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .registers 5
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 566
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 567
    .local v0, "target":Lcom/android/internal/app/chooser/TargetInfo;
    if-eqz v0, :cond_b

    .line 568
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    .line 570
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist setPlaceholderCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 129
    iput p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    .line 130
    return-void
.end method

.method protected blacklist shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .registers 7
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 555
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 556
    .local v1, "existingInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 557
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 558
    const/4 v0, 0x0

    return v0

    .line 560
    .end local v1    # "existingInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_24
    goto :goto_6

    .line 561
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 4
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 575
    if-eqz p2, :cond_7

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    return-object v0

    .line 578
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_18

    .line 579
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 581
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/internal/app/ResolverListController;->updateChooserCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public blacklist updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 3
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 172
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 173
    return-void
.end method

.method blacklist updateOtherProfileTreatment(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V
    .registers 6
    .param p1, "otherProfileInfo"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    .line 347
    if-eqz p1, :cond_14

    .line 348
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->makeOtherProfileDisplayResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    goto :goto_38

    .line 351
    :cond_14
    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 353
    :try_start_16
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getLastChosen()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 360
    goto :goto_38

    .line 358
    :catch_1f
    move-exception v0

    .line 359
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling getLastChosenActivity\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_38
    return-void
.end method
