.class final Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChooserTargetInfo"
.end annotation


# instance fields
.field private final mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mBadgeContentDescription:Ljava/lang/CharSequence;

.field private mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private final mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final mFillInFlags:I

.field private final mFillInIntent:Landroid/content/Intent;

.field private final mModifiedScore:F

.field private final mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "other"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 519
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@8
    .line 557
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@a
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@c
    .line 558
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@e
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@10
    .line 559
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@12
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@14
    .line 560
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@16
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@18
    .line 561
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    #@1a
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    #@1c
    .line 562
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    #@1e
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    #@20
    .line 563
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    #@22
    .line 564
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    #@24
    .line 565
    iget v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    #@26
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    #@28
    .line 556
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "sourceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "chooserTarget"    # Landroid/service/chooser/ChooserTarget;
    .param p4, "modifiedScore"    # F

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 526
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 519
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@9
    .line 528
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@b
    .line 529
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@d
    .line 530
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    #@f
    .line 531
    if-eqz p2, :cond_0

    #@11
    .line 532
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v3

    #@15
    .line 533
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    #@17
    .line 534
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    .line 535
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    #@1b
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 536
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@22
    move-result-object v2

    #@23
    .line 537
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@25
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object v4

    #@29
    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@2b
    .line 538
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2d
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@30
    move-result-object v4

    #@31
    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    #@33
    .line 542
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {p3}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    #@36
    move-result-object v1

    #@37
    .line 544
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v1, :cond_1

    #@39
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@3c
    move-result-object v4

    #@3d
    :goto_0
    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    #@3f
    .line 546
    if-eqz p2, :cond_2

    #@41
    .line 547
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@43
    .line 552
    :goto_1
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    #@45
    .line 553
    iput v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    #@47
    .line 527
    return-void

    #@48
    :cond_1
    move-object v4, v5

    #@49
    .line 544
    goto :goto_0

    #@4a
    .line 549
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@55
    move-result-object v4

    #@56
    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@58
    goto :goto_1
.end method

.method private getBaseIntentToSend()Landroid/content/Intent;
    .locals 4

    #@0
    .prologue
    .line 592
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 593
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@6
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    #@9
    move-result-object v0

    #@a
    .local v0, "result":Landroid/content/Intent;
    move-object v1, v0

    #@b
    .line 594
    .end local v0    # "result":Landroid/content/Intent;
    .local v1, "result":Landroid/content/Intent;
    :goto_0
    if-nez v1, :cond_1

    #@d
    .line 595
    const-string/jumbo v2, "ChooserActivity"

    #@10
    const-string/jumbo v3, "ChooserTargetInfo: no base intent available to send"

    #@13
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    move-object v0, v1

    #@17
    .line 603
    .end local v1    # "result":Landroid/content/Intent;
    .restart local v0    # "result":Landroid/content/Intent;
    :goto_1
    return-object v0

    #@18
    .line 593
    .end local v0    # "result":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@1a
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    #@1d
    move-result-object v0

    #@1e
    .restart local v0    # "result":Landroid/content/Intent;
    move-object v1, v0

    #@1f
    .end local v0    # "result":Landroid/content/Intent;
    .restart local v1    # "result":Landroid/content/Intent;
    goto :goto_0

    #@20
    .line 597
    :cond_1
    new-instance v0, Landroid/content/Intent;

    #@22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@25
    .line 598
    .end local v1    # "result":Landroid/content/Intent;
    .restart local v0    # "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 599
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    #@2b
    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    #@2d
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    #@30
    .line 601
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@32
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;

    #@35
    move-result-object v2

    #@36
    const/4 v3, 0x0

    #@37
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    #@3a
    goto :goto_1
.end method


# virtual methods
.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 660
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    #@2
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@4
    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;Landroid/content/Intent;I)V

    #@7
    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 665
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 666
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 668
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@b
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x0

    #@10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/content/Intent;

    #@16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 670
    :cond_0
    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@2
    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 640
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getModifiedScore()F
    .locals 1

    #@0
    .prologue
    .line 569
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    #@2
    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@d
    goto :goto_0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 582
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 583
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 585
    new-instance v0, Landroid/content/ComponentName;

    #@12
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@16
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@18
    .line 586
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@1a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1c
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1e
    .line 585
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    return-object v0

    #@22
    .line 588
    :cond_1
    return-object v1
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 575
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 608
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ChooserTargets should be started as caller."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 613
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getBaseIntentToSend()Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    .line 614
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    #@7
    .line 615
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 617
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@b
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@12
    .line 618
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@14
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@1b
    .line 619
    invoke-virtual {p1, v0, p2, v2, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    #@1e
    .line 620
    return v2
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 625
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ChooserTargets should be started as caller."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
