.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$1;,
        Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;,
        Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;,
        Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;,
        Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivity$RowScale;,
        Lcom/android/internal/app/ChooserActivity$RowViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    }
.end annotation


# static fields
.field private static final CALLER_TARGET_SCORE_BOOST:F = 900.0f

.field private static final CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT:I = 0x2

.field private static final DEBUG:Z = false

.field private static final PINNED_SHARED_PREFS_NAME:Ljava/lang/String; = "chooser_pin_settings"

.field private static final PINNED_TARGET_SCORE_BOOST:F = 1000.0f

.field private static final QUERY_TARGET_SERVICE_LIMIT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ChooserActivity"

.field private static final TARGET_DETAILS_FRAGMENT_TAG:Ljava/lang/String; = "targetDetailsFragment"

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

.field private final mChooserHandler:Landroid/os/Handler;

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field private mChosenComponentSender:Landroid/content/IntentSender;

.field private mPinnedSharedPrefs:Landroid/content/SharedPreferences;

.field private mReferrerFillInIntent:Landroid/content/Intent;

.field private mRefinementIntentSender:Landroid/content/IntentSender;

.field private mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

.field private mReplacementExtras:Landroid/os/Bundle;

.field private final mServiceConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    #@3
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@a
    .line 111
    new-instance v0, Lcom/android/internal/app/ChooserActivity$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    #@f
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    #@11
    .line 81
    return-void
.end method

.method private convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 503
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 504
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 508
    :cond_0
    const-string/jumbo v1, "."

    #@b
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 517
    :goto_0
    return-object v0

    #@23
    .line 511
    :cond_1
    const/16 v1, 0x2e

    #@25
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    #@28
    move-result v1

    #@29
    if-ltz v1, :cond_2

    #@2b
    .line 513
    move-object v0, p2

    #@2c
    .local v0, "fullName":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 515
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    #@2e
    .local v0, "fullName":Ljava/lang/String;
    goto :goto_0
.end method

.method static getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 268
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    .line 269
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@6
    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    #@9
    move-result v3

    #@a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    .line 269
    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    #@11
    move-result-object v2

    #@12
    .line 271
    const-string/jumbo v3, "shared_prefs"

    #@15
    .line 268
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18
    .line 272
    const-string/jumbo v2, "chooser_pin_settings.xml"

    #@1b
    .line 268
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1e
    .line 273
    .local v0, "prefsFile":Ljava/io/File;
    const/4 v1, 0x0

    #@1f
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    #@22
    move-result-object v1

    #@23
    return-object v1
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "in"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 359
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SEND"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 360
    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    .line 359
    if-eqz v1, :cond_1

    #@16
    .line 361
    :cond_0
    const/high16 v1, 0x8080000

    #@18
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1b
    .line 357
    :cond_1
    return-void
.end method


# virtual methods
.method checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 565
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    .line 566
    .local v3, "targetIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@8
    move-result v0

    #@9
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@b
    .line 567
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/content/Intent;

    #@11
    .line 568
    .local v2, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 569
    const/4 v4, 0x1

    #@18
    return v4

    #@19
    .line 566
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 572
    .end local v2    # "targetIntent":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    #@1d
    return v4
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
    .line 609
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

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
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    #@c
    .line 612
    .local v0, "adapter":Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    #@f
    .line 613
    return-object v0
.end method

.method filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 576
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    if-nez p2, :cond_0

    #@2
    .line 577
    return-void

    #@3
    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v3

    #@7
    .line 581
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@a
    move-result v7

    #@b
    add-int/lit8 v2, v7, -0x1

    #@d
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    #@f
    .line 582
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Landroid/service/chooser/ChooserTarget;

    #@15
    .line 583
    .local v5, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v5}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    #@18
    move-result-object v6

    #@19
    .line 584
    .local v6, "targetName":Landroid/content/ComponentName;
    if-eqz p1, :cond_2

    #@1b
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_2

    #@25
    .line 581
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@27
    goto :goto_0

    #@28
    .line 591
    :cond_2
    const/4 v7, 0x0

    #@29
    :try_start_0
    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@2c
    move-result-object v0

    #@2d
    .line 592
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-boolean v7, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    #@2f
    if-eqz v7, :cond_3

    #@31
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    if-eqz v7, :cond_4

    #@35
    :cond_3
    const/4 v4, 0x1

    #@36
    .line 599
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v4, "remove":Z
    :goto_2
    if-eqz v4, :cond_1

    #@38
    .line 600
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@3b
    goto :goto_1

    #@3c
    .line 592
    .end local v4    # "remove":Z
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_4
    const/4 v4, 0x0

    #@3d
    .restart local v4    # "remove":Z
    goto :goto_2

    #@3e
    .line 593
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "remove":Z
    :catch_0
    move-exception v1

    #@3f
    .line 594
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "ChooserActivity"

    #@42
    new-instance v8, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v9, "Target "

    #@4a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v8

    #@52
    const-string/jumbo v9, " returned by "

    #@55
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v8

    #@5d
    .line 595
    const-string/jumbo v9, " component not found"

    #@60
    .line 594
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 596
    const/4 v4, 0x1

    #@6c
    .restart local v4    # "remove":Z
    goto :goto_2

    #@6d
    .line 575
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "remove":Z
    .end local v5    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v6    # "targetName":Landroid/content/ComponentName;
    :cond_5
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 339
    const v0, 0x1090044

    #@3
    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 289
    move-object v1, p2

    #@1
    .line 290
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 291
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    #@7
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@9
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    .line 292
    .local v0, "replExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@f
    .line 293
    new-instance v1, Landroid/content/Intent;

    #@11
    .end local v1    # "result":Landroid/content/Intent;
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@14
    .line 294
    .restart local v1    # "result":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@17
    .line 297
    .end local v0    # "replExtras":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@19
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 298
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@23
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    .line 297
    if-eqz v2, :cond_2

    #@2b
    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, "android.intent.extra.TITLE"

    #@32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@35
    move-result-object v2

    #@36
    .line 299
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@39
    move-result-object v1

    #@3a
    .line 302
    :cond_2
    return-object v1
.end method

.method public onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 8
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 308
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    #@7
    move-result-object v7

    #@8
    .line 309
    .local v7, "target":Landroid/content/ComponentName;
    if-eqz v7, :cond_0

    #@a
    .line 310
    new-instance v0, Landroid/content/Intent;

    #@c
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@f
    const-string/jumbo v1, "android.intent.extra.CHOSEN_COMPONENT"

    #@12
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@15
    move-result-object v3

    #@16
    .line 312
    .local v3, "fillIn":Landroid/content/Intent;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    #@18
    const/4 v2, -0x1

    #@19
    const/4 v4, 0x0

    #@1a
    const/4 v5, 0x0

    #@1b
    move-object v1, p0

    #@1c
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 306
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v7    # "target":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    #@20
    .line 313
    .restart local v3    # "fillIn":Landroid/content/Intent;
    .restart local v7    # "target":Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    #@21
    .line 314
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "ChooserActivity"

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "Unable to launch supplied IntentSender to report the chosen component: "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v14

    #@4
    .line 157
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.INTENT"

    #@7
    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@a
    move-result-object v18

    #@b
    .line 158
    .local v18, "targetParcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v18

    #@d
    instance-of v2, v0, Landroid/content/Intent;

    #@f
    if-nez v2, :cond_0

    #@11
    .line 159
    const-string/jumbo v2, "ChooserActivity"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v8, "Target is not an intent: "

    #@1c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    move-object/from16 v0, v18

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    #@30
    .line 161
    const/4 v2, 0x0

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-super {v0, v2}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    #@36
    .line 162
    return-void

    #@37
    :cond_0
    move-object/from16 v4, v18

    #@39
    .line 164
    check-cast v4, Landroid/content/Intent;

    #@3b
    .line 165
    .local v4, "target":Landroid/content/Intent;
    if-eqz v4, :cond_1

    #@3d
    .line 166
    move-object/from16 v0, p0

    #@3f
    invoke-direct {v0, v4}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    #@42
    .line 169
    :cond_1
    const-string/jumbo v2, "android.intent.extra.ALTERNATE_INTENTS"

    #@45
    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@48
    move-result-object v20

    #@49
    .line 170
    .local v20, "targetsParcelable":[Landroid/os/Parcelable;
    if-eqz v20, :cond_8

    #@4b
    .line 171
    if-nez v4, :cond_2

    #@4d
    const/16 v16, 0x1

    #@4f
    .line 173
    .local v16, "offset":Z
    :goto_0
    if-eqz v16, :cond_3

    #@51
    move-object/from16 v0, v20

    #@53
    array-length v2, v0

    #@54
    add-int/lit8 v2, v2, -0x1

    #@56
    :goto_1
    new-array v11, v2, [Landroid/content/Intent;

    #@58
    .line 174
    .local v11, "additionalTargets":[Landroid/content/Intent;
    const/4 v12, 0x0

    #@59
    .local v12, "i":I
    :goto_2
    move-object/from16 v0, v20

    #@5b
    array-length v2, v0

    #@5c
    if-ge v12, v2, :cond_7

    #@5e
    .line 175
    aget-object v2, v20, v12

    #@60
    instance-of v2, v2, Landroid/content/Intent;

    #@62
    if-nez v2, :cond_4

    #@64
    .line 176
    const-string/jumbo v2, "ChooserActivity"

    #@67
    new-instance v3, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v8, "EXTRA_ALTERNATE_INTENTS array entry #"

    #@6f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    const-string/jumbo v8, " is not an Intent: "

    #@7a
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    .line 177
    aget-object v8, v20, v12

    #@80
    .line 176
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    #@8e
    .line 179
    const/4 v2, 0x0

    #@8f
    move-object/from16 v0, p0

    #@91
    invoke-super {v0, v2}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    #@94
    .line 180
    return-void

    #@95
    .line 171
    .end local v11    # "additionalTargets":[Landroid/content/Intent;
    .end local v12    # "i":I
    .end local v16    # "offset":Z
    :cond_2
    const/16 v16, 0x0

    #@97
    goto :goto_0

    #@98
    .line 173
    .restart local v16    # "offset":Z
    :cond_3
    move-object/from16 v0, v20

    #@9a
    array-length v2, v0

    #@9b
    goto :goto_1

    #@9c
    .line 182
    .restart local v11    # "additionalTargets":[Landroid/content/Intent;
    .restart local v12    # "i":I
    :cond_4
    aget-object v10, v20, v12

    #@9e
    check-cast v10, Landroid/content/Intent;

    #@a0
    .line 183
    .local v10, "additionalTarget":Landroid/content/Intent;
    if-nez v12, :cond_5

    #@a2
    if-nez v4, :cond_5

    #@a4
    .line 184
    move-object v4, v10

    #@a5
    .line 185
    move-object/from16 v0, p0

    #@a7
    invoke-direct {v0, v10}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    #@aa
    .line 174
    :goto_3
    add-int/lit8 v12, v12, 0x1

    #@ac
    goto :goto_2

    #@ad
    .line 187
    :cond_5
    if-eqz v16, :cond_6

    #@af
    add-int/lit8 v2, v12, -0x1

    #@b1
    :goto_4
    aput-object v10, v11, v2

    #@b3
    .line 188
    move-object/from16 v0, p0

    #@b5
    invoke-direct {v0, v10}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    #@b8
    goto :goto_3

    #@b9
    :cond_6
    move v2, v12

    #@ba
    .line 187
    goto :goto_4

    #@bb
    .line 191
    .end local v10    # "additionalTarget":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    #@bd
    invoke-virtual {v0, v11}, Lcom/android/internal/app/ChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    #@c0
    .line 194
    .end local v11    # "additionalTargets":[Landroid/content/Intent;
    .end local v12    # "i":I
    .end local v16    # "offset":Z
    :cond_8
    const-string/jumbo v2, "android.intent.extra.REPLACEMENT_EXTRAS"

    #@c3
    invoke-virtual {v14, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@c6
    move-result-object v2

    #@c7
    move-object/from16 v0, p0

    #@c9
    iput-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    #@cb
    .line 195
    const-string/jumbo v2, "android.intent.extra.TITLE"

    #@ce
    invoke-virtual {v14, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@d1
    move-result-object v5

    #@d2
    .line 196
    .local v5, "title":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    #@d3
    .line 197
    .local v6, "defaultTitleRes":I
    if-nez v5, :cond_9

    #@d5
    .line 198
    const v6, 0x1040387

    #@d8
    .line 200
    :cond_9
    const-string/jumbo v2, "android.intent.extra.INITIAL_INTENTS"

    #@db
    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@de
    move-result-object v17

    #@df
    .line 201
    .local v17, "pa":[Landroid/os/Parcelable;
    const/4 v7, 0x0

    #@e0
    .line 202
    .local v7, "initialIntents":[Landroid/content/Intent;
    if-eqz v17, :cond_b

    #@e2
    .line 203
    move-object/from16 v0, v17

    #@e4
    array-length v2, v0

    #@e5
    new-array v7, v2, [Landroid/content/Intent;

    #@e7
    .line 204
    .local v7, "initialIntents":[Landroid/content/Intent;
    const/4 v12, 0x0

    #@e8
    .restart local v12    # "i":I
    :goto_5
    move-object/from16 v0, v17

    #@ea
    array-length v2, v0

    #@eb
    if-ge v12, v2, :cond_b

    #@ed
    .line 205
    aget-object v2, v17, v12

    #@ef
    instance-of v2, v2, Landroid/content/Intent;

    #@f1
    if-nez v2, :cond_a

    #@f3
    .line 206
    const-string/jumbo v2, "ChooserActivity"

    #@f6
    new-instance v3, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v8, "Initial intent #"

    #@fe
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v3

    #@102
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@105
    move-result-object v3

    #@106
    const-string/jumbo v8, " not an Intent: "

    #@109
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v3

    #@10d
    aget-object v8, v17, v12

    #@10f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v3

    #@113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v3

    #@117
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11a
    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    #@11d
    .line 208
    const/4 v2, 0x0

    #@11e
    move-object/from16 v0, p0

    #@120
    invoke-super {v0, v2}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    #@123
    .line 209
    return-void

    #@124
    .line 211
    :cond_a
    aget-object v13, v17, v12

    #@126
    check-cast v13, Landroid/content/Intent;

    #@128
    .line 212
    .local v13, "in":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@12a
    invoke-direct {v0, v13}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    #@12d
    .line 213
    aput-object v13, v7, v12

    #@12f
    .line 204
    add-int/lit8 v12, v12, 0x1

    #@131
    goto :goto_5

    #@132
    .line 217
    .end local v7    # "initialIntents":[Landroid/content/Intent;
    .end local v12    # "i":I
    .end local v13    # "in":Landroid/content/Intent;
    :cond_b
    new-instance v2, Landroid/content/Intent;

    #@134
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@137
    const-string/jumbo v3, "android.intent.extra.REFERRER"

    #@13a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getReferrer()Landroid/net/Uri;

    #@13d
    move-result-object v8

    #@13e
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@141
    move-result-object v2

    #@142
    move-object/from16 v0, p0

    #@144
    iput-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    #@146
    .line 220
    const-string/jumbo v2, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    #@149
    .line 219
    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@14c
    move-result-object v2

    #@14d
    check-cast v2, Landroid/content/IntentSender;

    #@14f
    move-object/from16 v0, p0

    #@151
    iput-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    #@153
    .line 222
    const-string/jumbo v2, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    #@156
    .line 221
    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@159
    move-result-object v2

    #@15a
    check-cast v2, Landroid/content/IntentSender;

    #@15c
    move-object/from16 v0, p0

    #@15e
    iput-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    #@160
    .line 223
    const/4 v2, 0x1

    #@161
    move-object/from16 v0, p0

    #@163
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    #@166
    .line 225
    const-string/jumbo v2, "android.intent.extra.EXCLUDE_COMPONENTS"

    #@169
    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@16c
    move-result-object v17

    #@16d
    .line 226
    if-eqz v17, :cond_d

    #@16f
    .line 227
    move-object/from16 v0, v17

    #@171
    array-length v2, v0

    #@172
    new-array v15, v2, [Landroid/content/ComponentName;

    #@174
    .line 228
    .local v15, "names":[Landroid/content/ComponentName;
    const/4 v12, 0x0

    #@175
    .restart local v12    # "i":I
    :goto_6
    move-object/from16 v0, v17

    #@177
    array-length v2, v0

    #@178
    if-ge v12, v2, :cond_c

    #@17a
    .line 229
    aget-object v2, v17, v12

    #@17c
    instance-of v2, v2, Landroid/content/ComponentName;

    #@17e
    if-nez v2, :cond_10

    #@180
    .line 230
    const-string/jumbo v2, "ChooserActivity"

    #@183
    new-instance v3, Ljava/lang/StringBuilder;

    #@185
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v8, "Filtered component #"

    #@18b
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v3

    #@18f
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@192
    move-result-object v3

    #@193
    const-string/jumbo v8, " not a ComponentName: "

    #@196
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v3

    #@19a
    aget-object v8, v17, v12

    #@19c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v3

    #@1a0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a3
    move-result-object v3

    #@1a4
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a7
    .line 231
    const/4 v15, 0x0

    #@1a8
    .line 236
    .end local v15    # "names":[Landroid/content/ComponentName;
    :cond_c
    move-object/from16 v0, p0

    #@1aa
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ChooserActivity;->setFilteredComponents([Landroid/content/ComponentName;)V

    #@1ad
    .line 239
    .end local v12    # "i":I
    :cond_d
    const-string/jumbo v2, "android.intent.extra.CHOOSER_TARGETS"

    #@1b0
    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@1b3
    move-result-object v17

    #@1b4
    .line 240
    if-eqz v17, :cond_f

    #@1b6
    .line 241
    move-object/from16 v0, v17

    #@1b8
    array-length v2, v0

    #@1b9
    new-array v0, v2, [Landroid/service/chooser/ChooserTarget;

    #@1bb
    move-object/from16 v19, v0

    #@1bd
    .line 242
    .local v19, "targets":[Landroid/service/chooser/ChooserTarget;
    const/4 v12, 0x0

    #@1be
    .restart local v12    # "i":I
    :goto_7
    move-object/from16 v0, v17

    #@1c0
    array-length v2, v0

    #@1c1
    if-ge v12, v2, :cond_e

    #@1c3
    .line 243
    aget-object v2, v17, v12

    #@1c5
    instance-of v2, v2, Landroid/service/chooser/ChooserTarget;

    #@1c7
    if-nez v2, :cond_11

    #@1c9
    .line 244
    const-string/jumbo v2, "ChooserActivity"

    #@1cc
    new-instance v3, Ljava/lang/StringBuilder;

    #@1ce
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d1
    const-string/jumbo v8, "Chooser target #"

    #@1d4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v3

    #@1d8
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v3

    #@1dc
    const-string/jumbo v8, " not a ChooserTarget: "

    #@1df
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v3

    #@1e3
    aget-object v8, v17, v12

    #@1e5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v3

    #@1e9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ec
    move-result-object v3

    #@1ed
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f0
    .line 245
    const/16 v19, 0x0

    #@1f2
    .line 250
    .end local v19    # "targets":[Landroid/service/chooser/ChooserTarget;
    :cond_e
    move-object/from16 v0, v19

    #@1f4
    move-object/from16 v1, p0

    #@1f6
    iput-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    #@1f8
    .line 253
    .end local v12    # "i":I
    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@1fb
    move-result-object v2

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    iput-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    #@200
    .line 255
    const/4 v8, 0x0

    #@201
    const/4 v9, 0x0

    #@202
    move-object/from16 v2, p0

    #@204
    move-object/from16 v3, p1

    #@206
    .line 254
    invoke-super/range {v2 .. v9}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    #@209
    .line 257
    const/16 v2, 0xd6

    #@20b
    move-object/from16 v0, p0

    #@20d
    invoke-static {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    #@210
    .line 155
    return-void

    #@211
    .line 234
    .restart local v12    # "i":I
    .restart local v15    # "names":[Landroid/content/ComponentName;
    :cond_10
    aget-object v2, v17, v12

    #@213
    check-cast v2, Landroid/content/ComponentName;

    #@215
    aput-object v2, v15, v12

    #@217
    .line 228
    add-int/lit8 v12, v12, 0x1

    #@219
    goto/16 :goto_6

    #@21b
    .line 248
    .end local v15    # "names":[Landroid/content/ComponentName;
    .restart local v19    # "targets":[Landroid/service/chooser/ChooserTarget;
    :cond_11
    aget-object v2, v17, v12

    #@21d
    check-cast v2, Landroid/service/chooser/ChooserTarget;

    #@21f
    aput-object v2, v19, v12

    #@221
    .line 242
    add-int/lit8 v12, v12, 0x1

    #@223
    goto :goto_7
.end method

.method protected onDestroy()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 278
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    #@4
    .line 279
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 280
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    #@d
    .line 281
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@f
    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    #@12
    .line 284
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    #@14
    const/4 v1, 0x1

    #@15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@18
    .line 277
    return-void
.end method

.method public onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 4
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 324
    instance-of v1, p1, Landroid/widget/ListView;

    #@3
    if-eqz v1, :cond_2

    #@5
    move-object v0, p1

    #@6
    check-cast v0, Landroid/widget/ListView;

    #@8
    .line 325
    :goto_0
    check-cast p2, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@a
    .end local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@c
    .line 326
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    #@e
    if-eqz v1, :cond_0

    #@10
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    #@12
    array-length v1, v1

    #@13
    if-lez v1, :cond_0

    #@15
    .line 327
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@17
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    #@19
    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V

    #@20
    .line 329
    :cond_0
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@22
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@24
    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    #@27
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@29
    .line 330
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@2b
    new-instance v2, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;

    #@2d
    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AbsListView;)V

    #@30
    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@33
    .line 331
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@35
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@38
    .line 332
    if-eqz v0, :cond_1

    #@3a
    .line 333
    const/4 v1, 0x1

    #@3b
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    #@3e
    .line 323
    :cond_1
    return-void

    #@3f
    .line 324
    .restart local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    :cond_2
    const/4 v0, 0x0

    #@40
    .local v0, "listView":Landroid/widget/ListView;
    goto :goto_0
.end method

.method onRefinementCanceled()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 557
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 558
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    #@a
    .line 559
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@c
    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    #@f
    .line 556
    return-void
.end method

.method onRefinementResult(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)V
    .locals 3
    .param p1, "selectedTarget"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 539
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 540
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    #@b
    .line 541
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@d
    .line 544
    :cond_0
    if-nez p1, :cond_2

    #@f
    .line 545
    const-string/jumbo v0, "ChooserActivity"

    #@12
    const-string/jumbo v1, "Refinement result intent did not match any known targets; canceling"

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 553
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    #@1b
    .line 538
    return-void

    #@1c
    .line 546
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_3

    #@22
    .line 547
    const-string/jumbo v0, "ChooserActivity"

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "onRefinementResult: Selected target "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 548
    const-string/jumbo v2, " cannot match refined source intent "

    #@38
    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_0

    #@48
    .line 549
    :cond_3
    invoke-interface {p1, p2, v2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@4b
    move-result-object v0

    #@4c
    invoke-super {p0, v0, v2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_1

    #@52
    .line 550
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    #@55
    .line 551
    return-void
.end method

.method public onSetupVoiceInteraction()V
    .locals 0

    #@0
    .prologue
    .line 534
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 12
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 368
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    #@4
    if-eqz v0, :cond_3

    #@6
    .line 369
    new-instance v3, Landroid/content/Intent;

    #@8
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@b
    .line 370
    .local v3, "fillIn":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    #@e
    move-result-object v10

    #@f
    .line 371
    .local v10, "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_3

    #@15
    .line 372
    const-string/jumbo v1, "android.intent.extra.INTENT"

    #@18
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/os/Parcelable;

    #@1e
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@21
    .line 373
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@24
    move-result v0

    #@25
    const/4 v1, 0x1

    #@26
    if-le v0, v1, :cond_1

    #@28
    .line 374
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@2b
    move-result v0

    #@2c
    add-int/lit8 v0, v0, -0x1

    #@2e
    new-array v7, v0, [Landroid/content/Intent;

    #@30
    .line 375
    .local v7, "alts":[Landroid/content/Intent;
    const/4 v9, 0x1

    #@31
    .local v9, "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@34
    move-result v6

    #@35
    .local v6, "N":I
    :goto_0
    if-ge v9, v6, :cond_0

    #@37
    .line 376
    add-int/lit8 v1, v9, -0x1

    #@39
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/content/Intent;

    #@3f
    aput-object v0, v7, v1

    #@41
    .line 375
    add-int/lit8 v9, v9, 0x1

    #@43
    goto :goto_0

    #@44
    .line 378
    :cond_0
    const-string/jumbo v0, "android.intent.extra.ALTERNATE_INTENTS"

    #@47
    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    #@4a
    .line 380
    .end local v6    # "N":I
    .end local v7    # "alts":[Landroid/content/Intent;
    .end local v9    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 381
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@50
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    #@53
    .line 383
    :cond_2
    new-instance v0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@55
    invoke-direct {v0, p0, p1, v2}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/os/Handler;)V

    #@58
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@5a
    .line 384
    const-string/jumbo v0, "android.intent.extra.RESULT_RECEIVER"

    #@5d
    .line 385
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@5f
    .line 384
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@62
    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    #@64
    const/4 v2, 0x0

    #@65
    const/4 v4, 0x0

    #@66
    const/4 v5, 0x0

    #@67
    move-object v1, p0

    #@68
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    .line 388
    return v11

    #@6c
    .line 389
    :catch_0
    move-exception v8

    #@6d
    .line 390
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "ChooserActivity"

    #@70
    const-string/jumbo v1, "Refinement IntentSender failed to send"

    #@73
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    .line 394
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v10    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    #@79
    move-result v0

    #@7a
    return v0
.end method

.method queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 21
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@0
    .prologue
    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v12

    #@4
    .line 429
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    #@6
    .line 430
    .local v16, "targetsToQuery":I
    const/4 v9, 0x0

    #@7
    .local v9, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfoCount()I

    #@a
    move-result v4

    #@b
    .local v4, "N":I
    :goto_0
    if-ge v9, v4, :cond_5

    #@d
    .line 431
    move-object/from16 v0, p1

    #@f
    invoke-virtual {v0, v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@12
    move-result-object v7

    #@13
    .line 432
    .local v7, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    #@18
    move-result v17

    #@19
    const/16 v18, 0x0

    #@1b
    cmpl-float v17, v17, v18

    #@1d
    if-nez v17, :cond_1

    #@1f
    .line 430
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    #@21
    goto :goto_0

    #@22
    .line 437
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@25
    move-result-object v17

    #@26
    move-object/from16 v0, v17

    #@28
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2a
    .line 438
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@2c
    .line 439
    .local v10, "md":Landroid/os/Bundle;
    if-eqz v10, :cond_2

    #@2e
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@30
    move-object/from16 v17, v0

    #@32
    .line 440
    const-string/jumbo v18, "android.service.chooser.chooser_target_service"

    #@35
    move-object/from16 v0, v18

    #@37
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v18

    #@3b
    .line 439
    move-object/from16 v0, p0

    #@3d
    move-object/from16 v1, v17

    #@3f
    move-object/from16 v2, v18

    #@41
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v15

    #@45
    .line 441
    .local v15, "serviceName":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_4

    #@47
    .line 442
    new-instance v13, Landroid/content/ComponentName;

    #@49
    .line 443
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4b
    move-object/from16 v17, v0

    #@4d
    .line 442
    move-object/from16 v0, v17

    #@4f
    invoke-direct {v13, v0, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@52
    .line 444
    .local v13, "serviceComponent":Landroid/content/ComponentName;
    new-instance v17, Landroid/content/Intent;

    #@54
    const-string/jumbo v18, "android.service.chooser.ChooserTargetService"

    #@57
    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5a
    move-object/from16 v0, v17

    #@5c
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@5f
    move-result-object v14

    #@60
    .line 452
    .local v14, "serviceIntent":Landroid/content/Intent;
    const/16 v17, 0x0

    #@62
    :try_start_0
    move/from16 v0, v17

    #@64
    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    #@67
    move-result-object v17

    #@68
    move-object/from16 v0, v17

    #@6a
    iget-object v11, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@6c
    .line 453
    .local v11, "perm":Ljava/lang/String;
    const-string/jumbo v17, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    #@6f
    move-object/from16 v0, v17

    #@71
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v17

    #@75
    if-nez v17, :cond_3

    #@77
    .line 454
    const-string/jumbo v17, "ChooserActivity"

    #@7a
    new-instance v18, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v19, "ChooserTargetService "

    #@82
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v18

    #@86
    move-object/from16 v0, v18

    #@88
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v18

    #@8c
    const-string/jumbo v19, " does not require"

    #@8f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v18

    #@93
    .line 455
    const-string/jumbo v19, " permission "

    #@96
    .line 454
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v18

    #@9a
    .line 455
    const-string/jumbo v19, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    #@9d
    .line 454
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v18

    #@a1
    .line 456
    const-string/jumbo v19, " - this service will not be queried for ChooserTargets."

    #@a4
    .line 454
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v18

    #@a8
    .line 457
    const-string/jumbo v19, " add android:permission=\""

    #@ab
    .line 454
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v18

    #@af
    .line 458
    const-string/jumbo v19, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    #@b2
    .line 454
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v18

    #@b6
    .line 458
    const-string/jumbo v19, "\""

    #@b9
    .line 454
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v18

    #@bd
    .line 459
    const-string/jumbo v19, " to the <service> tag for "

    #@c0
    .line 454
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v18

    #@c4
    move-object/from16 v0, v18

    #@c6
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v18

    #@ca
    .line 460
    const-string/jumbo v19, " in the manifest."

    #@cd
    .line 454
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v18

    #@d1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v18

    #@d5
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d8
    goto/16 :goto_1

    #@da
    .line 463
    .end local v11    # "perm":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@db
    .line 464
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v17, "ChooserActivity"

    #@de
    new-instance v18, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v19, "Could not look up service "

    #@e6
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v18

    #@ea
    move-object/from16 v0, v18

    #@ec
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v18

    #@f0
    .line 465
    const-string/jumbo v19, "; component name not found"

    #@f3
    .line 464
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v18

    #@f7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v18

    #@fb
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@fe
    goto/16 :goto_1

    #@100
    .line 440
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    #@101
    goto/16 :goto_2

    #@103
    .line 470
    .restart local v11    # "perm":Ljava/lang/String;
    .restart local v13    # "serviceComponent":Landroid/content/ComponentName;
    .restart local v14    # "serviceIntent":Landroid/content/Intent;
    .restart local v15    # "serviceName":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@105
    move-object/from16 v0, p0

    #@107
    invoke-direct {v6, v0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    #@10a
    .line 476
    .local v6, "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@10d
    move-result-object v17

    #@10e
    .line 475
    const/16 v18, 0x5

    #@110
    move-object/from16 v0, p0

    #@112
    move/from16 v1, v18

    #@114
    move-object/from16 v2, v17

    #@116
    invoke-virtual {v0, v14, v6, v1, v2}, Lcom/android/internal/app/ChooserActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@119
    move-result v17

    #@11a
    if-eqz v17, :cond_4

    #@11c
    .line 481
    move-object/from16 v0, p0

    #@11e
    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@120
    move-object/from16 v17, v0

    #@122
    move-object/from16 v0, v17

    #@124
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@127
    .line 482
    add-int/lit8 v16, v16, 0x1

    #@129
    .line 485
    .end local v6    # "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    .end local v11    # "perm":Ljava/lang/String;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    :cond_4
    const/16 v17, 0x5

    #@12b
    move/from16 v0, v16

    #@12d
    move/from16 v1, v17

    #@12f
    if-lt v0, v1, :cond_0

    #@131
    .line 492
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v10    # "md":Landroid/os/Bundle;
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@135
    move-object/from16 v17, v0

    #@137
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    #@13a
    move-result v17

    #@13b
    if-nez v17, :cond_6

    #@13d
    .line 495
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    #@141
    move-object/from16 v17, v0

    #@143
    .line 496
    const-wide/16 v18, 0x1388

    #@145
    .line 495
    const/16 v20, 0x2

    #@147
    move-object/from16 v0, v17

    #@149
    move/from16 v1, v20

    #@14b
    move-wide/from16 v2, v18

    #@14d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@150
    .line 427
    :goto_3
    return-void

    #@151
    .line 498
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    #@154
    goto :goto_3
.end method

.method public shouldGetActivityMetadata()Z
    .locals 1

    #@0
    .prologue
    .line 344
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 349
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@5
    move-result-object v1

    #@6
    .line 350
    .local v1, "name":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    #@8
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    const/4 v5, 0x0

    #@d
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@10
    move-result v2

    #@11
    .line 352
    .local v2, "pinned":Z
    new-instance v0, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;

    #@13
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@1a
    move-result-object v3

    #@1b
    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;Z)V

    #@1e
    .line 354
    .local v0, "f":Lcom/android/internal/app/ResolverTargetActionsDialogFragment;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, "targetDetailsFragment"

    #@25
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    #@28
    .line 348
    return-void
.end method

.method public startSelected(IZZ)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    #@0
    .prologue
    .line 399
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    #@3
    .line 401
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 404
    const/4 v0, 0x0

    #@8
    .line 405
    .local v0, "cat":I
    move v1, p1

    #@9
    .line 406
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@b
    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    #@e
    move-result v2

    #@f
    packed-switch v2, :pswitch_data_0

    #@12
    .line 421
    :goto_0
    if-eqz v0, :cond_0

    #@14
    .line 422
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@17
    .line 398
    .end local v0    # "cat":I
    .end local v1    # "value":I
    :cond_0
    return-void

    #@18
    .line 408
    .restart local v0    # "cat":I
    .restart local v1    # "value":I
    :pswitch_0
    const/16 v0, 0xd7

    #@1a
    .line 409
    goto :goto_0

    #@1b
    .line 411
    :pswitch_1
    const/16 v0, 0xd8

    #@1d
    .line 412
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@1f
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@22
    move-result v2

    #@23
    sub-int v1, p1, v2

    #@25
    .line 413
    goto :goto_0

    #@26
    .line 415
    :pswitch_2
    const/16 v0, 0xd9

    #@28
    .line 416
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@2a
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@2d
    move-result v2

    #@2e
    .line 417
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@30
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    #@33
    move-result v3

    #@34
    .line 416
    add-int/2addr v2, v3

    #@35
    sub-int v1, p1, v2

    #@37
    .line 418
    goto :goto_0

    #@38
    .line 406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method unbindRemainingServices()V
    .locals 5

    #@0
    .prologue
    .line 524
    const/4 v2, 0x0

    #@1
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@9
    .line 525
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@b
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@11
    .line 527
    .local v1, "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    #@14
    .line 528
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    #@17
    .line 524
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 530
    .end local v1    # "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@1c
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@1f
    .line 531
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    #@21
    const/4 v4, 0x2

    #@22
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@25
    .line 520
    return-void
.end method
