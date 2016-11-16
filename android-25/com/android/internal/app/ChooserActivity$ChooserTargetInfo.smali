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
    .line 657
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 620
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@8
    .line 658
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@a
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@c
    .line 659
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@e
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@10
    .line 660
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@12
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@14
    .line 661
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@16
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@18
    .line 662
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    #@1a
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    #@1c
    .line 663
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    #@1e
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    #@20
    .line 664
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    #@22
    .line 665
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    #@24
    .line 666
    iget v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    #@26
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    #@28
    .line 657
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
    .line 627
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 620
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@9
    .line 629
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@b
    .line 630
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@d
    .line 631
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    #@f
    .line 632
    if-eqz p2, :cond_0

    #@11
    .line 633
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v3

    #@15
    .line 634
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    #@17
    .line 635
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    .line 636
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    #@1b
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 637
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    #@22
    move-result-object v2

    #@23
    .line 638
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@25
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object v4

    #@29
    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@2b
    .line 639
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2d
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@30
    move-result-object v4

    #@31
    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    #@33
    .line 643
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {p3}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    #@36
    move-result-object v1

    #@37
    .line 645
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
    .line 647
    if-eqz p2, :cond_2

    #@41
    .line 648
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@43
    .line 653
    :goto_1
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    #@45
    .line 654
    iput v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    #@47
    .line 628
    return-void

    #@48
    :cond_1
    move-object v4, v5

    #@49
    .line 645
    goto :goto_0

    #@4a
    .line 650
    :cond_2
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

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
    .line 697
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 698
    .local v0, "result":Landroid/content/Intent;
    if-nez v0, :cond_0

    #@6
    .line 699
    const-string/jumbo v2, "ChooserActivity"

    #@9
    const-string/jumbo v3, "ChooserTargetInfo: no base intent available to send"

    #@c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 707
    :goto_0
    return-object v0

    #@10
    .line 701
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@12
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@15
    .line 702
    .end local v0    # "result":Landroid/content/Intent;
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 703
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    #@1b
    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    #@1d
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    #@20
    .line 705
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@22
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-get4(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;

    #@25
    move-result-object v2

    #@26
    const/4 v3, 0x0

    #@27
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    #@2a
    move-object v0, v1

    #@2b
    .end local v1    # "result":Landroid/content/Intent;
    .restart local v0    # "result":Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 777
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
    .line 782
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 783
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 785
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
    .line 787
    :cond_0
    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@2
    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 757
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getModifiedScore()F
    .locals 1

    #@0
    .prologue
    .line 670
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    #@2
    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    #@0
    .prologue
    .line 746
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
    .line 687
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 688
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 690
    new-instance v0, Landroid/content/ComponentName;

    #@12
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@16
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@18
    .line 691
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    #@1a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1c
    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@1e
    .line 690
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    return-object v0

    #@22
    .line 693
    :cond_1
    return-object v1
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 676
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 679
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@d
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@16
    .line 680
    .local v0, "targetIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@18
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1f
    .line 681
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@21
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@28
    .line 682
    return-object v0
.end method

.method public isPinned()Z
    .locals 1

    #@0
    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->isPinned()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 712
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ChooserTargets should be started as caller."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 717
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getBaseIntentToSend()Landroid/content/Intent;

    #@4
    move-result-object v1

    #@5
    .line 718
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    #@7
    .line 719
    return v0

    #@8
    .line 721
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@a
    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@11
    .line 722
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@13
    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@1a
    .line 732
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 733
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@20
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 734
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    #@2a
    invoke-virtual {v3}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 733
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    .line 735
    .local v0, "ignoreTargetSecurity":Z
    :cond_1
    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    #@39
    .line 736
    const/4 v2, 0x1

    #@3a
    return v2
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 741
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ChooserTargets should be started as caller."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
