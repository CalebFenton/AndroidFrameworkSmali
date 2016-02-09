.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;,
        Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;,
        Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;,
        Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivity$1;
    }
.end annotation


# static fields
.field private static final CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT:I = 0x2

.field private static final DEBUG:Z = false

.field private static final QUERY_TARGET_SERVICE_LIMIT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ChooserActivity"

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final mChooserHandler:Landroid/os/Handler;

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private mChosenComponentSender:Landroid/content/IntentSender;

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

.method static synthetic -get2(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;
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
    .line 66
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    #@3
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@a
    .line 88
    new-instance v0, Lcom/android/internal/app/ChooserActivity$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    #@f
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    #@11
    .line 66
    return-void
.end method

.method private convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 403
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 404
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 408
    :cond_0
    const-string/jumbo v1, "."

    #@b
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 410
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
    .line 417
    :goto_0
    return-object v0

    #@23
    .line 411
    :cond_1
    const/16 v1, 0x2e

    #@25
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    #@28
    move-result v1

    #@29
    if-ltz v1, :cond_2

    #@2b
    .line 413
    move-object v0, p2

    #@2c
    .local v0, "fullName":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 415
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    #@2e
    .local v0, "fullName":Ljava/lang/String;
    goto :goto_0
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "in"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SEND"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 271
    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    .line 270
    if-eqz v1, :cond_1

    #@16
    .line 272
    :cond_0
    const/high16 v1, 0x8080000

    #@18
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1b
    .line 268
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
    .line 464
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    .line 465
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
    .line 466
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/content/Intent;

    #@11
    .line 467
    .local v2, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 468
    const/4 v4, 0x1

    #@18
    return v4

    #@19
    .line 465
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 471
    .end local v2    # "targetIntent":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    #@1d
    return v4
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
    .line 508
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
    .line 511
    .local v0, "adapter":Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    #@f
    .line 512
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
    .line 475
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    if-nez p2, :cond_0

    #@2
    .line 476
    return-void

    #@3
    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v3

    #@7
    .line 480
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
    .line 481
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Landroid/service/chooser/ChooserTarget;

    #@15
    .line 482
    .local v5, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v5}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    #@18
    move-result-object v6

    #@19
    .line 483
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
    .line 480
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@27
    goto :goto_0

    #@28
    .line 490
    :cond_2
    const/4 v7, 0x0

    #@29
    :try_start_0
    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@2c
    move-result-object v0

    #@2d
    .line 491
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
    .line 498
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v4, "remove":Z
    :goto_2
    if-eqz v4, :cond_1

    #@38
    .line 499
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@3b
    goto :goto_1

    #@3c
    .line 491
    .end local v4    # "remove":Z
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_4
    const/4 v4, 0x0

    #@3d
    .restart local v4    # "remove":Z
    goto :goto_2

    #@3e
    .line 492
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "remove":Z
    :catch_0
    move-exception v1

    #@3f
    .line 493
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
    .line 494
    const-string/jumbo v9, " component not found"

    #@60
    .line 493
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
    .line 495
    const/4 v4, 0x1

    #@6c
    .restart local v4    # "remove":Z
    goto :goto_2

    #@6d
    .line 474
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "remove":Z
    .end local v5    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v6    # "targetName":Landroid/content/ComponentName;
    :cond_5
    return-void
.end method

.method getLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 260
    const v0, 0x1090042

    #@3
    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 215
    move-object v1, p2

    #@1
    .line 216
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 217
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    #@7
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@9
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    .line 218
    .local v0, "replExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@f
    .line 219
    new-instance v1, Landroid/content/Intent;

    #@11
    .end local v1    # "result":Landroid/content/Intent;
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@14
    .line 220
    .restart local v1    # "result":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@17
    .line 223
    .end local v0    # "replExtras":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@19
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 224
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@23
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    .line 223
    if-eqz v2, :cond_2

    #@2b
    .line 226
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
    .line 225
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@39
    move-result-object v1

    #@3a
    .line 228
    :cond_2
    return-object v1
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 8
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 234
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    #@7
    move-result-object v7

    #@8
    .line 235
    .local v7, "target":Landroid/content/ComponentName;
    if-eqz v7, :cond_0

    #@a
    .line 236
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
    .line 238
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
    .line 232
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v7    # "target":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    #@20
    .line 239
    .restart local v3    # "fillIn":Landroid/content/Intent;
    .restart local v7    # "target":Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    #@21
    .line 240
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
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v13

    #@4
    .line 131
    .local v13, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.INTENT"

    #@7
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@a
    move-result-object v16

    #@b
    .line 132
    .local v16, "targetParcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v16

    #@d
    instance-of v1, v0, Landroid/content/Intent;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 133
    const-string/jumbo v1, "ChooserActivity"

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v7, "Target is not an intent: "

    #@1c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    move-object/from16 v0, v16

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    #@30
    .line 135
    const/4 v1, 0x0

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    #@36
    .line 136
    return-void

    #@37
    :cond_0
    move-object/from16 v3, v16

    #@39
    .line 138
    check-cast v3, Landroid/content/Intent;

    #@3b
    .line 139
    .local v3, "target":Landroid/content/Intent;
    if-eqz v3, :cond_1

    #@3d
    .line 140
    move-object/from16 v0, p0

    #@3f
    invoke-direct {v0, v3}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    #@42
    .line 143
    :cond_1
    const-string/jumbo v1, "android.intent.extra.ALTERNATE_INTENTS"

    #@45
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@48
    move-result-object v17

    #@49
    .line 144
    .local v17, "targetsParcelable":[Landroid/os/Parcelable;
    if-eqz v17, :cond_8

    #@4b
    .line 145
    if-nez v3, :cond_2

    #@4d
    const/4 v14, 0x1

    #@4e
    .line 147
    .local v14, "offset":Z
    :goto_0
    if-eqz v14, :cond_3

    #@50
    move-object/from16 v0, v17

    #@52
    array-length v1, v0

    #@53
    add-int/lit8 v1, v1, -0x1

    #@55
    :goto_1
    new-array v10, v1, [Landroid/content/Intent;

    #@57
    .line 148
    .local v10, "additionalTargets":[Landroid/content/Intent;
    const/4 v11, 0x0

    #@58
    .local v11, "i":I
    :goto_2
    move-object/from16 v0, v17

    #@5a
    array-length v1, v0

    #@5b
    if-ge v11, v1, :cond_7

    #@5d
    .line 149
    aget-object v1, v17, v11

    #@5f
    instance-of v1, v1, Landroid/content/Intent;

    #@61
    if-nez v1, :cond_4

    #@63
    .line 150
    const-string/jumbo v1, "ChooserActivity"

    #@66
    new-instance v2, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v7, "EXTRA_ALTERNATE_INTENTS array entry #"

    #@6e
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    const-string/jumbo v7, " is not an Intent: "

    #@79
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    .line 151
    aget-object v7, v17, v11

    #@7f
    .line 150
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    #@8d
    .line 153
    const/4 v1, 0x0

    #@8e
    move-object/from16 v0, p0

    #@90
    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    #@93
    .line 154
    return-void

    #@94
    .line 145
    .end local v10    # "additionalTargets":[Landroid/content/Intent;
    .end local v11    # "i":I
    .end local v14    # "offset":Z
    :cond_2
    const/4 v14, 0x0

    #@95
    .restart local v14    # "offset":Z
    goto :goto_0

    #@96
    .line 147
    :cond_3
    move-object/from16 v0, v17

    #@98
    array-length v1, v0

    #@99
    goto :goto_1

    #@9a
    .line 156
    .restart local v10    # "additionalTargets":[Landroid/content/Intent;
    .restart local v11    # "i":I
    :cond_4
    aget-object v9, v17, v11

    #@9c
    check-cast v9, Landroid/content/Intent;

    #@9e
    .line 157
    .local v9, "additionalTarget":Landroid/content/Intent;
    if-nez v11, :cond_5

    #@a0
    if-nez v3, :cond_5

    #@a2
    .line 158
    move-object v3, v9

    #@a3
    .line 159
    move-object/from16 v0, p0

    #@a5
    invoke-direct {v0, v3}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    #@a8
    .line 148
    :goto_3
    add-int/lit8 v11, v11, 0x1

    #@aa
    goto :goto_2

    #@ab
    .line 161
    :cond_5
    if-eqz v14, :cond_6

    #@ad
    add-int/lit8 v1, v11, -0x1

    #@af
    :goto_4
    aput-object v9, v10, v1

    #@b1
    .line 162
    move-object/from16 v0, p0

    #@b3
    invoke-direct {v0, v9}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    #@b6
    goto :goto_3

    #@b7
    :cond_6
    move v1, v11

    #@b8
    .line 161
    goto :goto_4

    #@b9
    .line 165
    .end local v9    # "additionalTarget":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    #@bb
    invoke-virtual {v0, v10}, Lcom/android/internal/app/ChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    #@be
    .line 168
    .end local v10    # "additionalTargets":[Landroid/content/Intent;
    .end local v11    # "i":I
    .end local v14    # "offset":Z
    :cond_8
    const-string/jumbo v1, "android.intent.extra.REPLACEMENT_EXTRAS"

    #@c1
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@c4
    move-result-object v1

    #@c5
    move-object/from16 v0, p0

    #@c7
    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    #@c9
    .line 169
    const-string/jumbo v1, "android.intent.extra.TITLE"

    #@cc
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@cf
    move-result-object v4

    #@d0
    .line 170
    .local v4, "title":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    #@d1
    .line 171
    .local v5, "defaultTitleRes":I
    if-nez v4, :cond_9

    #@d3
    .line 172
    const v5, 0x1040354

    #@d6
    .line 174
    :cond_9
    const-string/jumbo v1, "android.intent.extra.INITIAL_INTENTS"

    #@d9
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@dc
    move-result-object v15

    #@dd
    .line 175
    .local v15, "pa":[Landroid/os/Parcelable;
    const/4 v6, 0x0

    #@de
    .line 176
    .local v6, "initialIntents":[Landroid/content/Intent;
    if-eqz v15, :cond_b

    #@e0
    .line 177
    array-length v1, v15

    #@e1
    new-array v6, v1, [Landroid/content/Intent;

    #@e3
    .line 178
    .local v6, "initialIntents":[Landroid/content/Intent;
    const/4 v11, 0x0

    #@e4
    .restart local v11    # "i":I
    :goto_5
    array-length v1, v15

    #@e5
    if-ge v11, v1, :cond_b

    #@e7
    .line 179
    aget-object v1, v15, v11

    #@e9
    instance-of v1, v1, Landroid/content/Intent;

    #@eb
    if-nez v1, :cond_a

    #@ed
    .line 180
    const-string/jumbo v1, "ChooserActivity"

    #@f0
    new-instance v2, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v7, "Initial intent #"

    #@f8
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v2

    #@fc
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v2

    #@100
    const-string/jumbo v7, " not an Intent: "

    #@103
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v2

    #@107
    aget-object v7, v15, v11

    #@109
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v2

    #@10d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v2

    #@111
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@114
    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    #@117
    .line 182
    const/4 v1, 0x0

    #@118
    move-object/from16 v0, p0

    #@11a
    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    #@11d
    .line 183
    return-void

    #@11e
    .line 185
    :cond_a
    aget-object v12, v15, v11

    #@120
    check-cast v12, Landroid/content/Intent;

    #@122
    .line 186
    .local v12, "in":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@124
    invoke-direct {v0, v12}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    #@127
    .line 187
    aput-object v12, v6, v11

    #@129
    .line 178
    add-int/lit8 v11, v11, 0x1

    #@12b
    goto :goto_5

    #@12c
    .line 191
    .end local v6    # "initialIntents":[Landroid/content/Intent;
    .end local v11    # "i":I
    .end local v12    # "in":Landroid/content/Intent;
    :cond_b
    new-instance v1, Landroid/content/Intent;

    #@12e
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@131
    const-string/jumbo v2, "android.intent.extra.REFERRER"

    #@134
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getReferrer()Landroid/net/Uri;

    #@137
    move-result-object v7

    #@138
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@13b
    move-result-object v1

    #@13c
    move-object/from16 v0, p0

    #@13e
    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    #@140
    .line 194
    const-string/jumbo v1, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    #@143
    .line 193
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@146
    move-result-object v1

    #@147
    check-cast v1, Landroid/content/IntentSender;

    #@149
    move-object/from16 v0, p0

    #@14b
    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    #@14d
    .line 196
    const-string/jumbo v1, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    #@150
    .line 195
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@153
    move-result-object v1

    #@154
    check-cast v1, Landroid/content/IntentSender;

    #@156
    move-object/from16 v0, p0

    #@158
    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    #@15a
    .line 197
    const/4 v1, 0x1

    #@15b
    move-object/from16 v0, p0

    #@15d
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    #@160
    .line 199
    const/4 v7, 0x0

    #@161
    const/4 v8, 0x0

    #@162
    move-object/from16 v1, p0

    #@164
    move-object/from16 v2, p1

    #@166
    .line 198
    invoke-super/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    #@169
    .line 201
    const/16 v1, 0xd6

    #@16b
    move-object/from16 v0, p0

    #@16d
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    #@170
    .line 129
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 206
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    #@4
    .line 207
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 208
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    #@d
    .line 209
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@f
    .line 205
    :cond_0
    return-void
.end method

.method onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 3
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    #@0
    .prologue
    .line 250
    instance-of v1, p1, Landroid/widget/ListView;

    #@2
    if-eqz v1, :cond_1

    #@4
    move-object v0, p1

    #@5
    check-cast v0, Landroid/widget/ListView;

    #@7
    .line 251
    :goto_0
    check-cast p2, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@9
    .end local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@b
    .line 252
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@d
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@f
    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    #@12
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@15
    .line 253
    if-eqz v0, :cond_0

    #@17
    .line 254
    const/4 v1, 0x1

    #@18
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    #@1b
    .line 249
    :cond_0
    return-void

    #@1c
    .line 250
    .restart local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    :cond_1
    const/4 v0, 0x0

    #@1d
    .local v0, "listView":Landroid/widget/ListView;
    goto :goto_0
.end method

.method onRefinementCanceled()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 456
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 457
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    #@a
    .line 458
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@c
    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    #@f
    .line 455
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
    .line 438
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 439
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    #@b
    .line 440
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@d
    .line 443
    :cond_0
    if-nez p1, :cond_2

    #@f
    .line 444
    const-string/jumbo v0, "ChooserActivity"

    #@12
    const-string/jumbo v1, "Refinement result intent did not match any known targets; canceling"

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 452
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    #@1b
    .line 437
    return-void

    #@1c
    .line 445
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_3

    #@22
    .line 446
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
    .line 447
    const-string/jumbo v2, " cannot match refined source intent "

    #@38
    .line 446
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
    .line 448
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
    .line 449
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    #@55
    .line 450
    return-void
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    #@0
    .prologue
    .line 433
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
    .line 279
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    #@4
    if-eqz v0, :cond_3

    #@6
    .line 280
    new-instance v3, Landroid/content/Intent;

    #@8
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@b
    .line 281
    .local v3, "fillIn":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    #@e
    move-result-object v10

    #@f
    .line 282
    .local v10, "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_3

    #@15
    .line 283
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
    .line 284
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@24
    move-result v0

    #@25
    const/4 v1, 0x1

    #@26
    if-le v0, v1, :cond_1

    #@28
    .line 285
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@2b
    move-result v0

    #@2c
    add-int/lit8 v0, v0, -0x1

    #@2e
    new-array v7, v0, [Landroid/content/Intent;

    #@30
    .line 286
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
    .line 287
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
    .line 286
    add-int/lit8 v9, v9, 0x1

    #@43
    goto :goto_0

    #@44
    .line 289
    :cond_0
    const-string/jumbo v0, "android.intent.extra.ALTERNATE_INTENTS"

    #@47
    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    #@4a
    .line 291
    .end local v6    # "N":I
    .end local v7    # "alts":[Landroid/content/Intent;
    .end local v9    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 292
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@50
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    #@53
    .line 294
    :cond_2
    new-instance v0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@55
    invoke-direct {v0, p0, p1, v2}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/os/Handler;)V

    #@58
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@5a
    .line 295
    const-string/jumbo v0, "android.intent.extra.RESULT_RECEIVER"

    #@5d
    .line 296
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    #@5f
    .line 295
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@62
    .line 298
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
    .line 299
    return v11

    #@6c
    .line 300
    :catch_0
    move-exception v8

    #@6d
    .line 301
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "ChooserActivity"

    #@70
    const-string/jumbo v1, "Refinement IntentSender failed to send"

    #@73
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    .line 305
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
    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v12

    #@4
    .line 340
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    #@6
    .line 341
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
    if-ge v9, v4, :cond_4

    #@d
    .line 342
    move-object/from16 v0, p1

    #@f
    invoke-virtual {v0, v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@12
    move-result-object v7

    #@13
    .line 343
    .local v7, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@16
    move-result-object v17

    #@17
    move-object/from16 v0, v17

    #@19
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1b
    .line 344
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@1d
    .line 345
    .local v10, "md":Landroid/os/Bundle;
    if-eqz v10, :cond_1

    #@1f
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@21
    move-object/from16 v17, v0

    #@23
    .line 346
    const-string/jumbo v18, "android.service.chooser.chooser_target_service"

    #@26
    move-object/from16 v0, v18

    #@28
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v18

    #@2c
    .line 345
    move-object/from16 v0, p0

    #@2e
    move-object/from16 v1, v17

    #@30
    move-object/from16 v2, v18

    #@32
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v15

    #@36
    .line 347
    :goto_1
    if-eqz v15, :cond_3

    #@38
    .line 348
    new-instance v13, Landroid/content/ComponentName;

    #@3a
    .line 349
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@3c
    move-object/from16 v17, v0

    #@3e
    .line 348
    move-object/from16 v0, v17

    #@40
    invoke-direct {v13, v0, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 350
    .local v13, "serviceComponent":Landroid/content/ComponentName;
    new-instance v17, Landroid/content/Intent;

    #@45
    const-string/jumbo v18, "android.service.chooser.ChooserTargetService"

    #@48
    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4b
    move-object/from16 v0, v17

    #@4d
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@50
    move-result-object v14

    #@51
    .line 358
    .local v14, "serviceIntent":Landroid/content/Intent;
    const/16 v17, 0x0

    #@53
    :try_start_0
    move/from16 v0, v17

    #@55
    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    #@58
    move-result-object v17

    #@59
    move-object/from16 v0, v17

    #@5b
    iget-object v11, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@5d
    .line 359
    .local v11, "perm":Ljava/lang/String;
    const-string/jumbo v17, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    #@60
    move-object/from16 v0, v17

    #@62
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v17

    #@66
    if-nez v17, :cond_2

    #@68
    .line 360
    const-string/jumbo v17, "ChooserActivity"

    #@6b
    new-instance v18, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v19, "ChooserTargetService "

    #@73
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v18

    #@77
    move-object/from16 v0, v18

    #@79
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v18

    #@7d
    const-string/jumbo v19, " does not require"

    #@80
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v18

    #@84
    .line 361
    const-string/jumbo v19, " permission "

    #@87
    .line 360
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v18

    #@8b
    .line 361
    const-string/jumbo v19, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    #@8e
    .line 360
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v18

    #@92
    .line 362
    const-string/jumbo v19, " - this service will not be queried for ChooserTargets."

    #@95
    .line 360
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v18

    #@99
    .line 363
    const-string/jumbo v19, " add android:permission=\""

    #@9c
    .line 360
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v18

    #@a0
    .line 364
    const-string/jumbo v19, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    #@a3
    .line 360
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v18

    #@a7
    .line 364
    const-string/jumbo v19, "\""

    #@aa
    .line 360
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v18

    #@ae
    .line 365
    const-string/jumbo v19, " to the <service> tag for "

    #@b1
    .line 360
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v18

    #@b5
    move-object/from16 v0, v18

    #@b7
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v18

    #@bb
    .line 366
    const-string/jumbo v19, " in the manifest."

    #@be
    .line 360
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v18

    #@c2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v18

    #@c6
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c9
    .line 341
    .end local v11    # "perm":Ljava/lang/String;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    #@cb
    goto/16 :goto_0

    #@cd
    .line 346
    :cond_1
    const/4 v15, 0x0

    #@ce
    .local v15, "serviceName":Ljava/lang/String;
    goto/16 :goto_1

    #@d0
    .line 369
    .end local v15    # "serviceName":Ljava/lang/String;
    .restart local v13    # "serviceComponent":Landroid/content/ComponentName;
    .restart local v14    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    #@d1
    .line 370
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v17, "ChooserActivity"

    #@d4
    new-instance v18, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v19, "Could not look up service "

    #@dc
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v18

    #@e0
    move-object/from16 v0, v18

    #@e2
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v18

    #@e6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v18

    #@ea
    move-object/from16 v0, v17

    #@ec
    move-object/from16 v1, v18

    #@ee
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f1
    goto :goto_2

    #@f2
    .line 374
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "perm":Ljava/lang/String;
    :cond_2
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@f4
    move-object/from16 v0, p0

    #@f6
    invoke-direct {v6, v0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    #@f9
    .line 376
    .local v6, "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@fb
    .line 375
    const/16 v18, 0x5

    #@fd
    move-object/from16 v0, p0

    #@ff
    move/from16 v1, v18

    #@101
    move-object/from16 v2, v17

    #@103
    invoke-virtual {v0, v14, v6, v1, v2}, Lcom/android/internal/app/ChooserActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@106
    move-result v17

    #@107
    if-eqz v17, :cond_3

    #@109
    .line 381
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@10d
    move-object/from16 v17, v0

    #@10f
    move-object/from16 v0, v17

    #@111
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@114
    .line 382
    add-int/lit8 v16, v16, 0x1

    #@116
    .line 385
    .end local v6    # "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    .end local v11    # "perm":Ljava/lang/String;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    :cond_3
    const/16 v17, 0x5

    #@118
    move/from16 v0, v16

    #@11a
    move/from16 v1, v17

    #@11c
    if-lt v0, v1, :cond_0

    #@11e
    .line 392
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v10    # "md":Landroid/os/Bundle;
    :cond_4
    move-object/from16 v0, p0

    #@120
    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@122
    move-object/from16 v17, v0

    #@124
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    #@127
    move-result v17

    #@128
    if-nez v17, :cond_5

    #@12a
    .line 395
    move-object/from16 v0, p0

    #@12c
    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    #@12e
    move-object/from16 v17, v0

    #@130
    .line 396
    const-wide/16 v18, 0x1388

    #@132
    .line 395
    const/16 v20, 0x2

    #@134
    move-object/from16 v0, v17

    #@136
    move/from16 v1, v20

    #@138
    move-wide/from16 v2, v18

    #@13a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@13d
    .line 338
    :goto_3
    return-void

    #@13e
    .line 398
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    #@141
    goto :goto_3
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    #@0
    .prologue
    .line 265
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method startSelected(IZZ)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    #@0
    .prologue
    .line 310
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    #@3
    .line 312
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 315
    const/4 v0, 0x0

    #@8
    .line 316
    .local v0, "cat":I
    move v1, p1

    #@9
    .line 317
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@b
    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    #@e
    move-result v2

    #@f
    packed-switch v2, :pswitch_data_0

    #@12
    .line 332
    :goto_0
    if-eqz v0, :cond_0

    #@14
    .line 333
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@17
    .line 309
    .end local v0    # "cat":I
    .end local v1    # "value":I
    :cond_0
    return-void

    #@18
    .line 319
    .restart local v0    # "cat":I
    .restart local v1    # "value":I
    :pswitch_0
    const/16 v0, 0xd7

    #@1a
    .line 320
    goto :goto_0

    #@1b
    .line 322
    :pswitch_1
    const/16 v0, 0xd8

    #@1d
    .line 323
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@1f
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@22
    move-result v2

    #@23
    sub-int/2addr v1, v2

    #@24
    .line 324
    goto :goto_0

    #@25
    .line 326
    :pswitch_2
    const/16 v0, 0xd9

    #@27
    .line 327
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@29
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@2c
    move-result v2

    #@2d
    .line 328
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@2f
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    #@32
    move-result v3

    #@33
    .line 327
    add-int/2addr v2, v3

    #@34
    sub-int/2addr v1, v2

    #@35
    .line 329
    goto :goto_0

    #@36
    .line 317
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
    .line 424
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
    .line 425
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@b
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@11
    .line 427
    .local v1, "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    #@14
    .line 424
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 429
    .end local v1    # "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    #@19
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@1c
    .line 430
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    #@1e
    const/4 v4, 0x2

    #@1f
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@22
    .line 420
    return-void
.end method
