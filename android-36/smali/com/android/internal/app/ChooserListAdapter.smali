.class public Lcom/android/internal/app/ChooserListAdapter;
.super Lcom/android/internal/app/ResolverListAdapter;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;,
        Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;
    }
.end annotation


# static fields
.field public static final blacklist CALLER_TARGET_SCORE_BOOST:F = 900.0f

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_CHOOSER_TARGETS_PER_APP:I = 0x2

.field private static final blacklist MAX_SUGGESTED_APP_TARGETS:I = 0x4

.field public static final blacklist NO_POSITION:I = -0x1

.field private static final blacklist PINNED_SHORTCUT_TARGET_SCORE_BOOST:F = 1000.0f

.field public static final blacklist SHORTCUT_TARGET_SCORE_BOOST:F = 90.0f

.field private static final blacklist TAG:Ljava/lang/String; = "ChooserListAdapter"

.field public static final blacklist TARGET_BAD:I = -0x1

.field public static final blacklist TARGET_CALLER:I = 0x0

.field public static final blacklist TARGET_SERVICE:I = 0x1

.field public static final blacklist TARGET_STANDARD:I = 0x2

.field public static final blacklist TARGET_STANDARD_AZ:I = 0x3


# instance fields
.field private blacklist mAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

.field private blacklist mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

.field private blacklist mApplySharingAppLimits:Z

.field private final blacklist mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final blacklist mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field private final blacklist mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

.field private blacklist mEnableStackedApps:Z

.field private final blacklist mIconLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/app/chooser/SelectableTargetInfo;",
            "Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInitialIntentsUserSpace:Landroid/os/UserHandle;

.field private blacklist mListViewDataChanged:Z

.field private final blacklist mMaxShortcutTargetsPerApp:I

.field private blacklist mNumShortcutResults:I

.field private blacklist mOnIconLoadedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

.field private blacklist mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

.field private final blacklist mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

.field private final blacklist mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSortedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallerTargets(Lcom/android/internal/app/ChooserListAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableStackedApps(Lcom/android/internal/app/ChooserListAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mEnableStackedApps:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSortedList(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V
    .registers 29
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
    .param p7, "chooserListCommunicator"    # Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
    .param p8, "selectableTargetInfoCommunicator"    # Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;
    .param p9, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p10, "chooserActivityLogger"    # Lcom/android/internal/app/ChooserActivityLogger;
    .param p11, "initialIntentsUserSpace"    # Landroid/os/UserHandle;
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
            "Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;",
            "Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/ChooserActivityLogger;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 159
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v11, p3

    move-object/from16 v12, p9

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;ZLandroid/os/UserHandle;)V

    .line 68
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/app/ChooserListAdapter;->mEnableStackedApps:Z

    .line 92
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    .line 97
    new-instance v0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    .line 104
    iput-boolean v3, v1, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    .line 122
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$1;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$1;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    iput-object v0, v1, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    .line 162
    nop

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10e00cc

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    .line 164
    iput-object v8, v1, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    .line 165
    invoke-direct {v1}, Lcom/android/internal/app/ChooserListAdapter;->createPlaceHolders()V

    .line 166
    move-object/from16 v4, p8

    iput-object v4, v1, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 167
    move-object/from16 v5, p10

    iput-object v5, v1, Lcom/android/internal/app/ChooserListAdapter;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    .line 168
    iput-object v10, v1, Lcom/android/internal/app/ChooserListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    .line 170
    if-eqz v11, :cond_138

    .line 171
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_73
    array-length v0, v11

    if-ge v6, v0, :cond_135

    .line 172
    aget-object v7, v11, v6

    .line 173
    .local v7, "ii":Landroid/content/Intent;
    if-nez v7, :cond_7e

    .line 174
    move-object/from16 v15, p1

    goto/16 :goto_12f

    .line 181
    :cond_7e
    const/4 v9, 0x0

    .line 182
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v13, 0x0

    .line 183
    .local v13, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 184
    .local v14, "cn":Landroid/content/ComponentName;
    if-eqz v14, :cond_99

    .line 186
    :try_start_86
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v12, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move-object v13, v0

    .line 187
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v9, v0

    .line 188
    iput-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_97
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_86 .. :try_end_97} :catch_98

    .line 191
    goto :goto_99

    .line 189
    :catch_98
    move-exception v0

    .line 193
    :cond_99
    :goto_99
    if-nez v13, :cond_b7

    .line 195
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v15, Landroid/content/Intent;

    if-ne v0, v15, :cond_a5

    move-object v0, v7

    goto :goto_aa

    :cond_a5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 196
    .local v0, "rii":Landroid/content/Intent;
    :goto_aa
    const/high16 v15, 0x10000

    invoke-virtual {v12, v0, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 197
    if-eqz v9, :cond_b5

    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_b6

    :cond_b5
    const/4 v15, 0x0

    :goto_b6
    move-object v13, v15

    .line 199
    .end local v0    # "rii":Landroid/content/Intent;
    :cond_b7
    if-nez v13, :cond_d4

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No activity found for "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "ChooserListAdapter"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    move-object/from16 v15, p1

    goto :goto_12f

    .line 203
    :cond_d4
    nop

    .line 204
    const-string/jumbo v0, "user"

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 205
    .local v0, "userManager":Landroid/os/UserManager;
    instance-of v3, v7, Landroid/content/pm/LabeledIntent;

    if-eqz v3, :cond_103

    .line 206
    move-object v3, v7

    check-cast v3, Landroid/content/pm/LabeledIntent;

    .line 207
    .local v3, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v3}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 208
    invoke-virtual {v3}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v9, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 209
    invoke-virtual {v3}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v9, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 210
    invoke-virtual {v3}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v9, Landroid/content/pm/ResolveInfo;->icon:I

    .line 211
    iget v2, v9, Landroid/content/pm/ResolveInfo;->icon:I

    iput v2, v9, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 213
    .end local v3    # "li":Landroid/content/pm/LabeledIntent;
    :cond_103
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 214
    const/4 v2, 0x1

    iput-boolean v2, v9, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 215
    const/4 v2, 0x0

    iput v2, v9, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_111

    .line 213
    :cond_110
    const/4 v2, 0x0

    .line 217
    :goto_111
    iget-object v3, v1, Lcom/android/internal/app/ChooserListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    iput-object v3, v9, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 218
    iget-object v3, v1, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    new-instance v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-object/from16 v16, v0

    .end local v0    # "userManager":Landroid/os/UserManager;
    .local v16, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1, v9}, Lcom/android/internal/app/ChooserListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    invoke-direct {v2, v7, v9, v7, v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, v1, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_12f

    goto :goto_13a

    .line 171
    .end local v7    # "ii":Landroid/content/Intent;
    .end local v9    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v13    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v14    # "cn":Landroid/content/ComponentName;
    .end local v16    # "userManager":Landroid/os/UserManager;
    :cond_12f
    :goto_12f
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_73

    :cond_135
    move-object/from16 v15, p1

    goto :goto_13a

    .line 170
    .end local v6    # "i":I
    :cond_138
    move-object/from16 v15, p1

    .line 222
    :goto_13a
    const-string/jumbo v0, "systemui"

    const-string v2, "apply_sharing_app_limits_in_sysui"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    .line 226
    return-void
.end method

.method private blacklist createPlaceHolders()V
    .registers 4

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 263
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 265
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 267
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .registers 9
    .param p1, "chooserTargetInfo"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 688
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 689
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v0, :cond_15

    .line 690
    return v1

    .line 694
    :cond_15
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 695
    .local v3, "otherTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    invoke-interface {p1, v3}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->isSimilar(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 696
    return v1

    .line 698
    .end local v3    # "otherTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    :cond_2e
    goto :goto_1b

    .line 700
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 701
    .local v0, "currentSize":I
    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getModifiedScore()F

    move-result v3

    .line 702
    .local v3, "newScore":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v5}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_67

    .line 704
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 705
    .local v5, "serviceTarget":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    if-nez v5, :cond_56

    .line 706
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 707
    return v2

    .line 708
    :cond_56
    invoke-interface {v5}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getModifiedScore()F

    move-result v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_64

    .line 709
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 710
    return v2

    .line 703
    .end local v5    # "serviceTarget":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 714
    .end local v4    # "i":I
    :cond_67
    iget-object v4, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v4}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v4

    if-ge v0, v4, :cond_75

    .line 715
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    return v2

    .line 719
    :cond_75
    return v1
.end method

.method static synthetic blacklist lambda$completeServiceTargetLoading$0(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .registers 2
    .param p0, "o"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 678
    instance-of v0, p0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    return v0
.end method

.method private blacklist loadDirectShareIcon(Lcom/android/internal/app/chooser/SelectableTargetInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 353
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;

    .line 354
    .local v0, "task":Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;
    if-nez v0, :cond_16

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->createLoadDirectShareIconTask(Lcom/android/internal/app/chooser/SelectableTargetInfo;)Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->loadIcon()V

    .line 359
    :cond_16
    return-void
.end method


# virtual methods
.method public blacklist addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V
    .registers 26
    .param p1, "origTarget"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "targetType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;I",
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 582
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    .local p4, "directShareToShortcutInfos":Ljava/util/Map;, "Ljava/util/Map<Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 583
    return-void

    .line 585
    :cond_d
    move-object/from16 v6, p1

    invoke-virtual {v0, v6, v2}, Lcom/android/internal/app/ChooserListAdapter;->getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F

    move-result v3

    .line 586
    .local v3, "baseScore":F
    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 587
    const/4 v11, 0x0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_22

    const/4 v5, 0x3

    if-ne v2, v5, :cond_20

    goto :goto_22

    :cond_20
    move v5, v11

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v5, 0x1

    :goto_23
    move v13, v5

    .line 590
    .local v13, "isShortcutResult":Z
    if-eqz v13, :cond_29

    iget v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    goto :goto_2a

    .line 591
    :cond_29
    nop

    :goto_2a
    move v14, v4

    .line 592
    .local v14, "maxTargets":I
    iget-boolean v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3c

    .line 593
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_3c
    move v15, v4

    .line 594
    .local v15, "targetsLimit":I
    const/4 v4, 0x0

    .line 595
    .local v4, "lastScore":F
    const/4 v5, 0x0

    .line 596
    .local v5, "shouldNotify":Z
    const/4 v7, 0x0

    .local v7, "i":I
    move v8, v15

    move/from16 v16, v4

    move/from16 v17, v5

    move v4, v7

    .end local v5    # "shouldNotify":Z
    .end local v7    # "i":I
    .local v4, "i":I
    .local v8, "count":I
    .local v16, "lastScore":F
    .local v17, "shouldNotify":Z
    :goto_46
    if-ge v4, v8, :cond_b3

    .line 597
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/service/chooser/ChooserTarget;

    .line 598
    .local v7, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v5

    .line 599
    .local v5, "targetScore":F
    iget-boolean v9, v0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    if-eqz v9, :cond_63

    .line 600
    mul-float/2addr v5, v3

    .line 601
    if-lez v4, :cond_63

    cmpl-float v9, v5, v16

    if-ltz v9, :cond_63

    .line 604
    const v9, 0x3f733333    # 0.95f

    mul-float v5, v16, v9

    .line 607
    :cond_63
    if-eqz v13, :cond_6e

    move-object/from16 v9, p4

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    goto :goto_71

    .line 608
    :cond_6e
    move-object/from16 v9, p4

    const/4 v10, 0x0

    :goto_71
    nop

    .line 609
    .local v10, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v10, :cond_7e

    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v18

    if-eqz v18, :cond_7e

    .line 610
    const/high16 v18, 0x447a0000    # 1000.0f

    add-float v5, v5, v18

    .line 612
    :cond_7e
    const/16 v18, 0x1

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    .line 613
    .local v12, "userHandle":Landroid/os/UserHandle;
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12, v11}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 614
    .local v1, "contextAsUser":Landroid/content/Context;
    move/from16 v19, v4

    .end local v4    # "i":I
    .local v19, "i":I
    new-instance v4, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    iget-object v9, v0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    move/from16 v20, v5

    move-object v5, v1

    move v1, v8

    move/from16 v8, v20

    .local v1, "count":I
    .local v5, "contextAsUser":Landroid/content/Context;
    .local v8, "targetScore":F
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {v0, v4}, Lcom/android/internal/app/ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v4

    .line 618
    .local v4, "isInserted":Z
    if-eqz v4, :cond_a7

    if-eqz v13, :cond_a7

    .line 619
    iget v6, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 622
    :cond_a7
    or-int v17, v17, v4

    .line 632
    move/from16 v16, v8

    .line 596
    .end local v4    # "isInserted":Z
    .end local v5    # "contextAsUser":Landroid/content/Context;
    .end local v7    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v8    # "targetScore":F
    .end local v10    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v12    # "userHandle":Landroid/os/UserHandle;
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v6, p1

    move v8, v1

    move-object/from16 v1, p2

    .end local v19    # "i":I
    .local v4, "i":I
    goto :goto_46

    .end local v1    # "count":I
    .local v8, "count":I
    :cond_b3
    move/from16 v19, v4

    move v1, v8

    .line 635
    .end local v4    # "i":I
    .end local v8    # "count":I
    if-eqz v17, :cond_bb

    .line 636
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 638
    :cond_bb
    return-void
.end method

.method protected blacklist alwaysShowSubLabel()Z
    .registers 2

    .line 729
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist completeServiceTargetLoading()V
    .registers 3

    .line 678
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 679
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 680
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetEmptyDirectShareRow()V

    .line 683
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 684
    return-void
.end method

.method protected blacklist createLoadDirectShareIconTask(Lcom/android/internal/app/chooser/SelectableTargetInfo;)Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;
    .registers 4
    .param p1, "info"    # Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 363
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;-><init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;Lcom/android/internal/app/ChooserListAdapter-IA;)V

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

    .line 740
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserListAdapter$3;-><init>(Lcom/android/internal/app/ChooserListAdapter;Z)V

    return-object v0
.end method

.method public blacklist destroyAppPredictor()V
    .registers 3

    .line 775
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 776
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v0, v1}, Landroid/app/prediction/AppPredictor;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictor(Landroid/app/prediction/AppPredictor;)V

    .line 781
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

    if-eqz v0, :cond_23

    .line 782
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverAppPredictorCallback;->destroy()V

    .line 784
    :cond_23
    return-void
.end method

.method blacklist getAlphaTargetCount()I
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 455
    .local v0, "groupedCount":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 456
    .local v1, "ungroupedCount":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v2}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v2

    if-le v1, v2, :cond_1d

    move v2, v0

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return v2
.end method

.method blacklist getAppPredictor()Landroid/app/prediction/AppPredictor;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    return-object v0
.end method

.method public blacklist getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F
    .registers 5
    .param p1, "target"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "targetType"    # I

    .line 662
    if-nez p1, :cond_5

    .line 663
    const/high16 v0, 0x44610000    # 900.0f

    return v0

    .line 665
    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    .line 666
    .local v0, "score":F
    const/4 v1, 0x2

    if-eq p2, v1, :cond_11

    const/4 v1, 0x3

    if-ne p2, v1, :cond_10

    goto :goto_11

    .line 670
    :cond_10
    return v0

    .line 668
    :cond_11
    :goto_11
    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method public blacklist getCallerTargetCount()I
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getChooserTargetForValue(I)Landroid/service/chooser/ChooserTarget;
    .registers 3
    .param p1, "value"    # I

    .line 723
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 3

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    return v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 3
    .param p1, "position"    # I

    .line 499
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

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

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method blacklist getNumServiceTargetsForExpand()I
    .registers 2

    .line 647
    iget v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    return v0
.end method

.method public blacklist getPositionTargetType(I)I
    .registers 8
    .param p1, "position"    # I

    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    .line 472
    .local v1, "serviceTargetCount":I
    if-ge p1, v1, :cond_9

    .line 473
    const/4 v2, 0x1

    return v2

    .line 475
    :cond_9
    add-int/2addr v0, v1

    .line 477
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    .line 478
    .local v2, "callerTargetCount":I
    sub-int v3, p1, v0

    if-ge v3, v2, :cond_14

    .line 479
    const/4 v3, 0x0

    return v3

    .line 481
    :cond_14
    add-int/2addr v0, v2

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    .line 484
    .local v3, "rankedTargetCount":I
    sub-int v4, p1, v0

    if-ge v4, v3, :cond_1f

    .line 485
    const/4 v4, 0x2

    return v4

    .line 487
    :cond_1f
    add-int/2addr v0, v3

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v4

    .line 490
    .local v4, "standardTargetCount":I
    sub-int v5, p1, v0

    if-ge v5, v4, :cond_2a

    .line 491
    const/4 v5, 0x3

    return v5

    .line 494
    :cond_2a
    const/4 v5, -0x1

    return v5
.end method

.method public blacklist getRankedTargetCount()I
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    .line 464
    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 465
    .local v0, "spacesAvailable":I
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public blacklist getSelectableServiceTargetCount()I
    .registers 5

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 439
    .local v2, "info":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    instance-of v3, v2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v3, :cond_19

    .line 440
    add-int/lit8 v0, v0, 0x1

    .line 442
    .end local v2    # "info":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    :cond_19
    goto :goto_7

    .line 443
    :cond_1a
    return v0
.end method

.method public blacklist getServiceTargetCount()I
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->shouldShowServiceTargets()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 448
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 450
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSurfacedTargetInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v0

    .line 565
    .local v0, "maxSurfacedTargets":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 565
    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getUnfilteredCount()I
    .registers 4

    .line 421
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 422
    .local v0, "appTargets":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    if-le v0, v1, :cond_13

    .line 423
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist handlePackagesChanged()V
    .registers 2

    .line 241
    invoke-direct {p0}, Lcom/android/internal/app/ChooserListAdapter;->createPlaceHolders()V

    .line 242
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 244
    return-void
.end method

.method public whitelist notifyDataSetChanged()V
    .registers 3

    .line 248
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    if-nez v0, :cond_10

    .line 249
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->sendListViewUpdateMessage(Landroid/os/UserHandle;)V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    .line 252
    :cond_10
    return-void
.end method

.method protected blacklist onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p3, "position"    # I

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 279
    .local v0, "holder":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    if-nez p2, :cond_17

    .line 280
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    .line 281
    const v3, 0x108091f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 280
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    return-void

    .line 285
    :cond_17
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->alwaysShowSubLabel()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 286
    invoke-virtual {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 287
    instance-of v1, p2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_68

    .line 289
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 290
    .local v1, "sti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v5

    .line 291
    .local v5, "rInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const-string v6, ""

    if-eqz v5, :cond_40

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_41

    :cond_40
    move-object v7, v6

    .line 292
    .local v7, "appName":Ljava/lang/CharSequence;
    :goto_41
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v8

    .line 293
    .local v8, "extendedInfo":Ljava/lang/CharSequence;
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v4

    .line 294
    if-eqz v8, :cond_51

    move-object v6, v8

    :cond_51
    aput-object v6, v9, v3

    aput-object v7, v9, v2

    .line 293
    const-string v6, " "

    invoke-static {v6, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "contentDescription":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->updateContentDescription(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->hasDisplayIcon()Z

    move-result v9

    if-nez v9, :cond_79

    .line 297
    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserListAdapter;->loadDirectShareIcon(Lcom/android/internal/app/chooser/SelectableTargetInfo;)V

    goto :goto_79

    .line 299
    .end local v1    # "sti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .end local v5    # "rInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v6    # "contentDescription":Ljava/lang/String;
    .end local v7    # "appName":Ljava/lang/CharSequence;
    .end local v8    # "extendedInfo":Ljava/lang/CharSequence;
    :cond_68
    instance-of v1, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_79

    .line 300
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 301
    .local v1, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 302
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserListAdapter;->loadIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_7a

    .line 299
    .end local v1    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_79
    :goto_79
    nop

    .line 307
    :cond_7a
    :goto_7a
    instance-of v1, p2, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    const/4 v5, 0x0

    if-eqz v1, :cond_af

    .line 308
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10500c7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 310
    .local v1, "maxWidth":I
    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 311
    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 311
    const v9, 0x10802db

    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    .end local v1    # "maxWidth":I
    goto :goto_c3

    .line 316
    :cond_af
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v6, 0x7fffffff

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 317
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->defaultItemViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :goto_c3
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 324
    instance-of v1, p2, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v1, :cond_e6

    .line 326
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10802dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 327
    .local v1, "bkg":Landroid/graphics/drawable/Drawable;
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 328
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    .end local v1    # "bkg":Landroid/graphics/drawable/Drawable;
    goto :goto_121

    :cond_e6
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_117

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v1

    if-eq v1, v2, :cond_f8

    .line 330
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v1

    if-ne v1, v3, :cond_117

    .line 333
    :cond_f8
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10802de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 334
    .restart local v1    # "bkg":Landroid/graphics/drawable/Drawable;
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 335
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 337
    .end local v1    # "bkg":Landroid/graphics/drawable/Drawable;
    goto :goto_121

    .line 338
    :cond_117
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 341
    :goto_121
    return-void
.end method

.method blacklist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 271
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090128

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist onIconLoaded(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 345
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->notifySingleItemChangeOnIconLoad()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mOnIconLoadedListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_10

    .line 346
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mOnIconLoadedListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_13

    .line 348
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 350
    :goto_13
    return-void
.end method

.method blacklist refreshListView()V
    .registers 2

    .line 255
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    if-eqz v0, :cond_7

    .line 256
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 258
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    .line 259
    return-void
.end method

.method public blacklist setAppPredictor(Landroid/app/prediction/AppPredictor;)V
    .registers 2
    .param p1, "appPredictor"    # Landroid/app/prediction/AppPredictor;

    .line 764
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 765
    return-void
.end method

.method public blacklist setAppPredictorCallback(Landroid/app/prediction/AppPredictor$Callback;Lcom/android/internal/app/ResolverAppPredictorCallback;)V
    .registers 3
    .param p1, "appPredictorCallback"    # Landroid/app/prediction/AppPredictor$Callback;
    .param p2, "appPredictorCallbackWrapper"    # Lcom/android/internal/app/ResolverAppPredictorCallback;

    .line 770
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    .line 771
    iput-object p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

    .line 772
    return-void
.end method

.method public blacklist setOnIconLoadedListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "onIconLoadedListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mOnIconLoadedListener:Ljava/util/function/Consumer;

    .line 230
    return-void
.end method

.method protected blacklist shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .registers 7
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 551
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    .line 552
    .local v1, "existingInfo":Lcom/android/internal/app/chooser/TargetInfo;
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 553
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 554
    const/4 v0, 0x0

    return v0

    .line 556
    .end local v1    # "existingInfo":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_24
    goto :goto_6

    .line 557
    :cond_25
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v0

    return v0
.end method

.method public blacklist targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 10
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 510
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 511
    return-object v1

    .line 514
    :cond_5
    const/4 v0, 0x0

    .line 517
    .local v0, "offset":I
    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    goto :goto_11

    .line 518
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v2

    :goto_11
    nop

    .line 519
    .local v2, "serviceTargetCount":I
    if-ge p1, v2, :cond_1d

    .line 520
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v1

    .line 522
    :cond_1d
    add-int/2addr v0, v2

    .line 525
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v3

    .line 526
    .local v3, "callerTargetCount":I
    sub-int v4, p1, v0

    if-ge v4, v3, :cond_31

    .line 527
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    sub-int v4, p1, v0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v1

    .line 529
    :cond_31
    add-int/2addr v0, v3

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v4

    .line 533
    .local v4, "rankedTargetCount":I
    sub-int v5, p1, v0

    if-ge v5, v4, :cond_4a

    .line 534
    if-eqz p2, :cond_43

    sub-int v1, p1, v0

    invoke-super {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    goto :goto_49

    .line 535
    :cond_43
    sub-int v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    .line 534
    :goto_49
    return-object v1

    .line 537
    :cond_4a
    add-int/2addr v0, v4

    .line 540
    sub-int v5, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v6

    if-ge v5, v6, :cond_66

    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_66

    .line 541
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    sub-int v5, p1, v0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v1

    .line 544
    :cond_66
    return-object v1
.end method

.method blacklist updateAlphabeticalList()V
    .registers 3

    .line 367
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$2;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 410
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 411
    return-void
.end method
