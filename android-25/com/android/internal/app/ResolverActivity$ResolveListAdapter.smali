.class public Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private mHasExtendedInfo:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromUid:I

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
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
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1249
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 1246
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@8
    .line 1252
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    #@a
    .line 1253
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    #@c
    .line 1254
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    #@e
    .line 1255
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    #@10
    .line 1256
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@16
    .line 1257
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@1d
    .line 1258
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@1f
    .line 1259
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    #@22
    .line 1251
    return-void
.end method

.method private addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@0
    .prologue
    .line 1583
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get0(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@6
    const/4 v1, -0x2

    #@7
    if-eq v0, v1, :cond_0

    #@9
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1586
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@f
    .line 1582
    :goto_0
    return-void

    #@10
    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    goto :goto_0
.end method

.method private addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "extraInfo"    # Ljava/lang/CharSequence;
    .param p3, "roLabel"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1555
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    #@4
    move-result v9

    #@5
    .line 1556
    .local v9, "count":I
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    #@8
    move-result-object v2

    #@9
    .line 1557
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@c
    move-result-object v3

    #@d
    .line 1558
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@f
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@11
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    #@14
    move-result-object v6

    #@15
    .line 1559
    .local v6, "replaceIntent":Landroid/content/Intent;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@17
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@19
    move-object v4, p3

    #@1a
    move-object v5, p2

    #@1b
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    #@1e
    .line 1561
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    #@21
    move-result v1

    #@22
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->setPinned(Z)V

    #@25
    .line 1562
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    #@28
    .line 1563
    if-ne v6, v2, :cond_0

    #@2a
    .line 1566
    const/4 v10, 0x1

    #@2b
    .local v10, "i":I
    move v7, v9

    #@2c
    .local v7, "N":I
    :goto_0
    if-ge v10, v9, :cond_0

    #@2e
    .line 1567
    invoke-virtual {p1, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    #@31
    move-result-object v8

    #@32
    .line 1568
    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    #@35
    .line 1566
    add-int/lit8 v10, v10, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1571
    .end local v7    # "N":I
    .end local v8    # "altIntent":Landroid/content/Intent;
    .end local v10    # "i":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    #@3b
    .line 1554
    return-void
.end method

.method private addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 10
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1465
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    .line 1466
    .local v1, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@7
    move-result v3

    #@8
    .line 1467
    .local v3, "intoCount":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    #@b
    .line 1468
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v6

    #@f
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@11
    .line 1469
    .local v6, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    #@12
    .line 1471
    .local v0, "found":Z
    const/4 v4, 0x0

    #@13
    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    #@15
    .line 1472
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v7

    #@19
    check-cast v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@1b
    .line 1473
    .local v7, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-direct {p0, v6, v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_2

    #@21
    .line 1474
    const/4 v0, 0x1

    #@22
    .line 1475
    invoke-virtual {v7, p2, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    #@25
    .line 1479
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_0
    if-nez v0, :cond_1

    #@27
    .line 1480
    new-instance v5, Landroid/content/ComponentName;

    #@29
    .line 1481
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2b
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2d
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2f
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@31
    .line 1480
    invoke-direct {v5, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 1482
    .local v5, "name":Landroid/content/ComponentName;
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@36
    invoke-direct {v7, v5, p2, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    #@39
    .line 1484
    .restart local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->isComponentPinned(Landroid/content/ComponentName;)Z

    #@3c
    move-result v8

    #@3d
    invoke-virtual {v7, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setPinned(Z)V

    #@40
    .line 1485
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    .line 1467
    .end local v5    # "name":Landroid/content/ComponentName;
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1471
    .restart local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@48
    goto :goto_1

    #@49
    .line 1464
    .end local v0    # "found":Z
    .end local v4    # "j":I
    .end local v6    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3
    return-void
.end method

.method private isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@0
    .prologue
    .line 1491
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    .line 1492
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4
    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    #@6
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1493
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@12
    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    #@14
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    .line 1492
    :goto_0
    return v1

    #@1d
    :cond_0
    const/4 v1, 0x0

    #@1e
    goto :goto_0
.end method

.method private onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    const/16 v7, 0x8

    #@2
    const/4 v6, 0x0

    #@3
    .line 1688
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    #@9
    .line 1689
    .local v1, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    #@c
    move-result-object v2

    #@d
    .line 1690
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    #@f
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@12
    move-result-object v3

    #@13
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_0

    #@19
    .line 1691
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    #@1b
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@22
    .line 1693
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_3

    #@28
    .line 1694
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    #@2a
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    #@2d
    .line 1695
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    #@2f
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@36
    .line 1699
    :goto_0
    instance-of v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@38
    if-eqz v3, :cond_1

    #@3a
    move-object v3, p2

    #@3b
    .line 1700
    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@3d
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_4

    #@43
    .line 1703
    :cond_1
    :goto_1
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    #@45
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@4c
    .line 1704
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@4e
    if-eqz v3, :cond_2

    #@50
    .line 1705
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    #@53
    move-result-object v0

    #@54
    .line 1706
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    #@56
    .line 1707
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@58
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5b
    .line 1708
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@5d
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@64
    .line 1709
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@66
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    #@69
    .line 1687
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    return-void

    #@6a
    .line 1697
    :cond_3
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    #@6c
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@6f
    goto :goto_0

    #@70
    .line 1701
    :cond_4
    new-instance v4, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;

    #@72
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@74
    move-object v3, p2

    #@75
    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@77
    invoke-direct {v4, v5, v3}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    #@7a
    new-array v3, v6, [Ljava/lang/Void;

    #@7c
    invoke-virtual {v4, v3}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@7f
    goto :goto_1

    #@80
    .line 1711
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@82
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    #@85
    goto :goto_2
.end method

.method private processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V
    .locals 17
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;II",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1507
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    sub-int v15, p3, p2

    #@2
    add-int/lit8 v11, v15, 0x1

    #@4
    .line 1508
    .local v11, "num":I
    const/4 v15, 0x1

    #@5
    if-ne v11, v15, :cond_1

    #@7
    .line 1510
    const/4 v15, 0x0

    #@8
    move-object/from16 v0, p0

    #@a
    move-object/from16 v1, p4

    #@c
    move-object/from16 v2, p5

    #@e
    invoke-direct {v0, v1, v15, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@11
    .line 1505
    :cond_0
    return-void

    #@12
    .line 1512
    :cond_1
    const/4 v15, 0x1

    #@13
    move-object/from16 v0, p0

    #@15
    iput-boolean v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    #@17
    .line 1513
    const/4 v14, 0x0

    #@18
    .line 1514
    .local v14, "usePkg":Z
    const/4 v15, 0x0

    #@19
    move-object/from16 v0, p4

    #@1b
    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@1e
    move-result-object v15

    #@1f
    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@21
    iget-object v4, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    .line 1515
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    #@25
    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@27
    invoke-static {v15}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@2a
    move-result-object v15

    #@2b
    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@2e
    move-result-object v13

    #@2f
    .line 1516
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_2

    #@31
    .line 1517
    const/4 v14, 0x1

    #@32
    .line 1519
    :cond_2
    if-nez v14, :cond_5

    #@34
    .line 1522
    new-instance v5, Ljava/util/HashSet;

    #@36
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@39
    .line 1523
    .local v5, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3c
    .line 1524
    add-int/lit8 v7, p2, 0x1

    #@3e
    .local v7, "j":I
    :goto_0
    move/from16 v0, p3

    #@40
    if-gt v7, v0, :cond_4

    #@42
    .line 1525
    move-object/from16 v0, p1

    #@44
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v15

    #@48
    check-cast v15, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@4a
    const/16 v16, 0x0

    #@4c
    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@4f
    move-result-object v9

    #@50
    .line 1526
    .local v9, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@52
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@58
    move-object/from16 v16, v0

    #@5a
    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@5d
    move-result-object v16

    #@5e
    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@61
    move-result-object v8

    #@62
    .line 1527
    .local v8, "jApp":Ljava/lang/CharSequence;
    if-eqz v8, :cond_3

    #@64
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@67
    move-result v15

    #@68
    if-eqz v15, :cond_6

    #@6a
    .line 1528
    :cond_3
    const/4 v14, 0x1

    #@6b
    .line 1535
    .end local v8    # "jApp":Ljava/lang/CharSequence;
    .end local v9    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    #@6e
    .line 1537
    .end local v5    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v7    # "j":I
    :cond_5
    move/from16 v10, p2

    #@70
    .local v10, "k":I
    :goto_1
    move/from16 v0, p3

    #@72
    if-gt v10, v0, :cond_0

    #@74
    .line 1538
    move-object/from16 v0, p1

    #@76
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@79
    move-result-object v12

    #@7a
    check-cast v12, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@7c
    .line 1539
    .local v12, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v15, 0x0

    #@7d
    invoke-virtual {v12, v15}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@80
    move-result-object v3

    #@81
    .line 1541
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7

    #@83
    .line 1543
    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@85
    iget-object v6, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@87
    .line 1548
    .local v6, "extraInfo":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    #@89
    move-object/from16 v1, p5

    #@8b
    invoke-direct {v0, v12, v6, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@8e
    .line 1537
    add-int/lit8 v10, v10, 0x1

    #@90
    goto :goto_1

    #@91
    .line 1531
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v6    # "extraInfo":Ljava/lang/CharSequence;
    .end local v10    # "k":I
    .end local v12    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v5    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v7    # "j":I
    .restart local v8    # "jApp":Ljava/lang/CharSequence;
    .restart local v9    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@94
    .line 1524
    add-int/lit8 v7, v7, 0x1

    #@96
    goto :goto_0

    #@97
    .line 1546
    .end local v5    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v7    # "j":I
    .end local v8    # "jApp":Ljava/lang/CharSequence;
    .end local v9    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "k":I
    .restart local v12    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_7
    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@99
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@9f
    move-object/from16 v16, v0

    #@a1
    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@a4
    move-result-object v16

    #@a5
    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@a8
    move-result-object v6

    #@a9
    .restart local v6    # "extraInfo":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private rebuildList()V
    .locals 30

    #@0
    .prologue
    .line 1299
    const/4 v15, 0x0

    #@1
    .line 1302
    .local v15, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@5
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    #@8
    move-result-object v21

    #@9
    .line 1303
    .local v21, "primaryIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@c
    move-result-object v3

    #@d
    .line 1304
    move-object/from16 v0, p0

    #@f
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@11
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v4

    #@15
    move-object/from16 v0, v21

    #@17
    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    .line 1305
    const/high16 v7, 0x10000

    #@1d
    .line 1303
    move-object/from16 v0, v21

    #@1f
    invoke-interface {v3, v0, v4, v7}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    #@22
    move-result-object v3

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 1311
    .end local v21    # "primaryIntent":Landroid/content/Intent;
    :goto_0
    const/4 v3, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2c
    .line 1312
    move-object/from16 v0, p0

    #@2e
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@30
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@33
    .line 1313
    move-object/from16 v0, p0

    #@35
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 1314
    new-instance v15, Ljava/util/ArrayList;

    #@3b
    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@3e
    move-object/from16 v0, p0

    #@40
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@42
    .line 1315
    .local v15, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@46
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    #@49
    move-result-object v3

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    #@4e
    move-object/from16 v0, p0

    #@50
    invoke-direct {v0, v15, v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    #@53
    .line 1361
    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_0
    if-eqz v15, :cond_19

    #@55
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@58
    move-result v13

    #@59
    .local v13, "N":I
    if-lez v13, :cond_19

    #@5b
    .line 1364
    const/4 v3, 0x0

    #@5c
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v11

    #@60
    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@62
    .line 1365
    .local v11, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    #@63
    invoke-virtual {v11, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@66
    move-result-object v22

    #@67
    .line 1366
    .local v22, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x1

    #@69
    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    #@6b
    if-ge v0, v13, :cond_e

    #@6d
    .line 1367
    move/from16 v0, v17

    #@6f
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v3

    #@73
    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@75
    const/4 v4, 0x0

    #@76
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@79
    move-result-object v6

    #@7a
    .line 1374
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v22

    #@7c
    iget v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    #@7e
    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    #@80
    if-ne v3, v4, :cond_1

    #@82
    .line 1375
    move-object/from16 v0, v22

    #@84
    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@86
    iget-boolean v4, v6, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@88
    if-eq v3, v4, :cond_d

    #@8a
    .line 1376
    :cond_1
    :goto_2
    move/from16 v0, v17

    #@8c
    if-ge v0, v13, :cond_d

    #@8e
    .line 1377
    move-object/from16 v0, p0

    #@90
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@92
    if-ne v3, v15, :cond_2

    #@94
    .line 1378
    new-instance v3, Ljava/util/ArrayList;

    #@96
    move-object/from16 v0, p0

    #@98
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@9a
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@a1
    .line 1380
    :cond_2
    move/from16 v0, v17

    #@a3
    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@a6
    .line 1381
    add-int/lit8 v13, v13, -0x1

    #@a8
    goto :goto_2

    #@a9
    .line 1306
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v13    # "N":I
    .end local v17    # "i":I
    .end local v22    # "r0":Landroid/content/pm/ResolveInfo;
    .local v15, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :catch_0
    move-exception v24

    #@aa
    .line 1307
    .local v24, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "ResolverActivity"

    #@ad
    new-instance v4, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v7, "Error calling setLastChosenActivity\n"

    #@b5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v4

    #@b9
    move-object/from16 v0, v24

    #@bb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v4

    #@c3
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    goto/16 :goto_0

    #@c8
    .line 1317
    .end local v24    # "re":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->shouldGetResolvedFilter()Z

    #@cb
    move-result v27

    #@cc
    .line 1318
    .local v27, "shouldGetResolvedFilter":Z
    move-object/from16 v0, p0

    #@ce
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@d0
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->shouldGetActivityMetadata()Z

    #@d3
    move-result v26

    #@d4
    .line 1319
    .local v26, "shouldGetActivityMetadata":Z
    const/16 v17, 0x0

    #@d6
    .restart local v17    # "i":I
    move-object/from16 v0, p0

    #@d8
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    #@da
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@dd
    move-result v13

    #@de
    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .restart local v13    # "N":I
    :goto_3
    move/from16 v0, v17

    #@e0
    if-ge v0, v13, :cond_8

    #@e2
    .line 1320
    move-object/from16 v0, p0

    #@e4
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    #@e6
    move/from16 v0, v17

    #@e8
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@eb
    move-result-object v19

    #@ec
    check-cast v19, Landroid/content/Intent;

    #@ee
    .line 1321
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@f0
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@f2
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@f5
    move-result-object v4

    #@f6
    .line 1323
    if-eqz v27, :cond_6

    #@f8
    const/16 v3, 0x40

    #@fa
    .line 1322
    :goto_4
    const/high16 v7, 0x10000

    #@fc
    or-int/2addr v7, v3

    #@fd
    .line 1324
    if-eqz v26, :cond_7

    #@ff
    const/16 v3, 0x80

    #@101
    .line 1322
    :goto_5
    or-int/2addr v3, v7

    #@102
    .line 1321
    move-object/from16 v0, v19

    #@104
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@107
    move-result-object v18

    #@108
    .line 1325
    .local v18, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v18, :cond_5

    #@10a
    .line 1326
    if-nez v15, :cond_4

    #@10c
    .line 1327
    new-instance v15, Ljava/util/ArrayList;

    #@10e
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@111
    move-object/from16 v0, p0

    #@113
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@115
    .line 1329
    :cond_4
    move-object/from16 v0, p0

    #@117
    move-object/from16 v1, v19

    #@119
    move-object/from16 v2, v18

    #@11b
    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    #@11e
    .line 1319
    :cond_5
    add-int/lit8 v17, v17, 0x1

    #@120
    goto :goto_3

    #@121
    .line 1323
    .end local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    const/4 v3, 0x0

    #@122
    goto :goto_4

    #@123
    .line 1324
    :cond_7
    const/4 v3, 0x0

    #@124
    goto :goto_5

    #@125
    .line 1340
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_8
    if-eqz v15, :cond_0

    #@127
    .line 1341
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@12a
    move-result v3

    #@12b
    add-int/lit8 v17, v3, -0x1

    #@12d
    :goto_6
    if-ltz v17, :cond_0

    #@12f
    .line 1342
    move/from16 v0, v17

    #@131
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@134
    move-result-object v3

    #@135
    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@137
    .line 1343
    const/4 v4, 0x0

    #@138
    .line 1342
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@13b
    move-result-object v3

    #@13c
    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@13e
    .line 1345
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@140
    move-object/from16 v0, p0

    #@142
    iget v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    #@144
    .line 1346
    iget-object v7, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@146
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@148
    iget-boolean v8, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    #@14a
    .line 1344
    invoke-static {v3, v4, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@14d
    move-result v16

    #@14e
    .line 1347
    .local v16, "granted":I
    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@150
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@152
    .line 1348
    const/high16 v4, 0x40000000    # 2.0f

    #@154
    .line 1347
    and-int/2addr v3, v4

    #@155
    if-eqz v3, :cond_c

    #@157
    const/16 v28, 0x1

    #@159
    .line 1349
    .local v28, "suspended":Z
    :goto_7
    if-nez v16, :cond_9

    #@15b
    if-nez v28, :cond_9

    #@15d
    .line 1350
    move-object/from16 v0, p0

    #@15f
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@161
    invoke-virtual {v3, v14}, Lcom/android/internal/app/ResolverActivity;->isComponentFiltered(Landroid/content/pm/ComponentInfo;)Z

    #@164
    move-result v3

    #@165
    .line 1349
    if-eqz v3, :cond_b

    #@167
    .line 1352
    :cond_9
    move-object/from16 v0, p0

    #@169
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@16b
    if-ne v3, v15, :cond_a

    #@16d
    .line 1353
    new-instance v3, Ljava/util/ArrayList;

    #@16f
    move-object/from16 v0, p0

    #@171
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@173
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@176
    move-object/from16 v0, p0

    #@178
    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@17a
    .line 1355
    :cond_a
    move/from16 v0, v17

    #@17c
    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@17f
    .line 1341
    :cond_b
    add-int/lit8 v17, v17, -0x1

    #@181
    goto :goto_6

    #@182
    .line 1347
    .end local v28    # "suspended":Z
    :cond_c
    const/16 v28, 0x0

    #@184
    .restart local v28    # "suspended":Z
    goto :goto_7

    #@185
    .line 1366
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v16    # "granted":I
    .end local v26    # "shouldGetActivityMetadata":Z
    .end local v27    # "shouldGetResolvedFilter":Z
    .end local v28    # "suspended":Z
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v22    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_d
    add-int/lit8 v17, v17, 0x1

    #@187
    goto/16 :goto_1

    #@189
    .line 1385
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_e
    const/4 v3, 0x1

    #@18a
    if-le v13, v3, :cond_f

    #@18c
    .line 1386
    move-object/from16 v0, p0

    #@18e
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@190
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    #@193
    move-result-object v3

    #@194
    invoke-virtual {v3, v15}, Lcom/android/internal/app/ResolverComparator;->compute(Ljava/util/List;)V

    #@197
    .line 1387
    move-object/from16 v0, p0

    #@199
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@19b
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    #@19e
    move-result-object v3

    #@19f
    invoke-static {v15, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1a2
    .line 1390
    :cond_f
    move-object/from16 v0, p0

    #@1a4
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    #@1a6
    if-eqz v3, :cond_14

    #@1a8
    .line 1391
    const/16 v17, 0x0

    #@1aa
    :goto_8
    move-object/from16 v0, p0

    #@1ac
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    #@1ae
    array-length v3, v3

    #@1af
    move/from16 v0, v17

    #@1b1
    if-ge v0, v3, :cond_14

    #@1b3
    .line 1392
    move-object/from16 v0, p0

    #@1b5
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    #@1b7
    aget-object v5, v3, v17

    #@1b9
    .line 1393
    .local v5, "ii":Landroid/content/Intent;
    if-nez v5, :cond_10

    #@1bb
    .line 1391
    :goto_9
    add-int/lit8 v17, v17, 0x1

    #@1bd
    goto :goto_8

    #@1be
    .line 1397
    :cond_10
    move-object/from16 v0, p0

    #@1c0
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@1c2
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1c5
    move-result-object v3

    #@1c6
    const/4 v4, 0x0

    #@1c7
    .line 1396
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    #@1ca
    move-result-object v14

    #@1cb
    .line 1398
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_11

    #@1cd
    .line 1399
    const-string/jumbo v3, "ResolverActivity"

    #@1d0
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d5
    const-string/jumbo v7, "No activity found for "

    #@1d8
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v4

    #@1dc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v4

    #@1e0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v4

    #@1e4
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e7
    goto :goto_9

    #@1e8
    .line 1402
    :cond_11
    new-instance v6, Landroid/content/pm/ResolveInfo;

    #@1ea
    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    #@1ed
    .line 1403
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1ef
    .line 1405
    move-object/from16 v0, p0

    #@1f1
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@1f3
    const-string/jumbo v4, "user"

    #@1f6
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1f9
    move-result-object v29

    #@1fa
    check-cast v29, Landroid/os/UserManager;

    #@1fc
    .line 1406
    .local v29, "userManager":Landroid/os/UserManager;
    instance-of v3, v5, Landroid/content/pm/LabeledIntent;

    #@1fe
    if-eqz v3, :cond_12

    #@200
    move-object/from16 v20, v5

    #@202
    .line 1407
    check-cast v20, Landroid/content/pm/LabeledIntent;

    #@204
    .line 1408
    .local v20, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    #@207
    move-result-object v3

    #@208
    iput-object v3, v6, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@20a
    .line 1409
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    #@20d
    move-result v3

    #@20e
    iput v3, v6, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@210
    .line 1410
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    #@213
    move-result-object v3

    #@214
    iput-object v3, v6, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@216
    .line 1411
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    #@219
    move-result v3

    #@21a
    iput v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    #@21c
    .line 1412
    iget v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    #@21e
    iput v3, v6, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@220
    .line 1414
    .end local v20    # "li":Landroid/content/pm/LabeledIntent;
    :cond_12
    invoke-virtual/range {v29 .. v29}, Landroid/os/UserManager;->isManagedProfile()Z

    #@223
    move-result v3

    #@224
    if-eqz v3, :cond_13

    #@226
    .line 1415
    const/4 v3, 0x1

    #@227
    iput-boolean v3, v6, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    #@229
    .line 1416
    const/4 v3, 0x0

    #@22a
    iput v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    #@22c
    .line 1418
    :cond_13
    new-instance v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@22e
    move-object/from16 v0, p0

    #@230
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@232
    .line 1419
    move-object/from16 v0, p0

    #@234
    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@236
    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@239
    move-result-object v7

    #@23a
    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@23d
    move-result-object v7

    #@23e
    const/4 v8, 0x0

    #@23f
    move-object v9, v5

    #@240
    .line 1418
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    #@243
    move-object/from16 v0, p0

    #@245
    invoke-direct {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    #@248
    goto/16 :goto_9

    #@24a
    .line 1425
    .end local v5    # "ii":Landroid/content/Intent;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v29    # "userManager":Landroid/os/UserManager;
    :cond_14
    const/4 v3, 0x0

    #@24b
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24e
    move-result-object v11

    #@24f
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@251
    .line 1426
    .restart local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    #@252
    invoke-virtual {v11, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@255
    move-result-object v22

    #@256
    .line 1427
    const/4 v9, 0x0

    #@257
    .line 1428
    .local v9, "start":I
    move-object/from16 v0, p0

    #@259
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@25b
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@25e
    move-result-object v3

    #@25f
    move-object/from16 v0, v22

    #@261
    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@264
    move-result-object v12

    #@265
    .line 1429
    .local v12, "r0Label":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    #@266
    move-object/from16 v0, p0

    #@268
    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    #@26a
    .line 1430
    const/16 v17, 0x1

    #@26c
    :goto_a
    move/from16 v0, v17

    #@26e
    if-ge v0, v13, :cond_18

    #@270
    .line 1431
    if-nez v12, :cond_15

    #@272
    .line 1432
    move-object/from16 v0, v22

    #@274
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@276
    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@278
    .line 1434
    :cond_15
    move/from16 v0, v17

    #@27a
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27d
    move-result-object v23

    #@27e
    check-cast v23, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@280
    .line 1435
    .local v23, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    #@281
    move-object/from16 v0, v23

    #@283
    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@286
    move-result-object v6

    #@287
    .line 1436
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    #@289
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@28b
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@28e
    move-result-object v3

    #@28f
    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@292
    move-result-object v25

    #@293
    .line 1437
    .local v25, "riLabel":Ljava/lang/CharSequence;
    if-nez v25, :cond_16

    #@295
    .line 1438
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@297
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@299
    move-object/from16 v25, v0

    #@29b
    .line 1440
    :cond_16
    move-object/from16 v0, v25

    #@29d
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2a0
    move-result v3

    #@2a1
    if-eqz v3, :cond_17

    #@2a3
    .line 1430
    :goto_b
    add-int/lit8 v17, v17, 0x1

    #@2a5
    goto :goto_a

    #@2a6
    .line 1443
    :cond_17
    add-int/lit8 v10, v17, -0x1

    #@2a8
    move-object/from16 v7, p0

    #@2aa
    move-object v8, v15

    #@2ab
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    #@2ae
    .line 1444
    move-object/from16 v11, v23

    #@2b0
    .line 1445
    move-object/from16 v22, v6

    #@2b2
    .line 1446
    move-object/from16 v12, v25

    #@2b4
    .line 1447
    move/from16 v9, v17

    #@2b6
    goto :goto_b

    #@2b7
    .line 1450
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v23    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v25    # "riLabel":Ljava/lang/CharSequence;
    :cond_18
    add-int/lit8 v10, v13, -0x1

    #@2b9
    move-object/from16 v7, p0

    #@2bb
    move-object v8, v15

    #@2bc
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    #@2bf
    .line 1455
    .end local v9    # "start":I
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v12    # "r0Label":Ljava/lang/CharSequence;
    .end local v13    # "N":I
    .end local v17    # "i":I
    .end local v22    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_19
    move-object/from16 v0, p0

    #@2c1
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2c3
    if-eqz v3, :cond_1a

    #@2c5
    move-object/from16 v0, p0

    #@2c7
    iget v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@2c9
    if-ltz v3, :cond_1a

    #@2cb
    .line 1456
    const/4 v3, -0x1

    #@2cc
    move-object/from16 v0, p0

    #@2ce
    iput v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@2d0
    .line 1457
    const/4 v3, 0x0

    #@2d1
    move-object/from16 v0, p0

    #@2d3
    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@2d5
    .line 1460
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onListRebuilt()V

    #@2d8
    .line 1298
    return-void
.end method

.method private updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1576
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    #@6
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@a
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@c
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    .line 1575
    if-eqz v0, :cond_0

    #@14
    .line 1577
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    #@16
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@18
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1a
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1c
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    .line 1575
    if-eqz v0, :cond_0

    #@24
    .line 1578
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@26
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@29
    move-result v0

    #@2a
    add-int/lit8 v0, v0, -0x1

    #@2c
    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@2e
    .line 1574
    :cond_0
    return-void
.end method


# virtual methods
.method public final bindView(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1684
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    #@7
    .line 1683
    return-void
.end method

.method public final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1664
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object v1

    #@4
    .line 1665
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    #@6
    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    #@9
    .line 1666
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@c
    .line 1667
    return-object v1
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 1602
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    .line 1603
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@c
    if-ltz v1, :cond_0

    #@e
    .line 1604
    add-int/lit8 v0, v0, -0x1

    #@10
    .line 1606
    :cond_0
    return v0
.end method

.method public getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@8
    return-object v0
.end method

.method public getDisplayInfoCount()I
    .locals 1

    #@0
    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@8
    return-object v0
.end method

.method public getDisplayResolveInfoCount()I
    .locals 1

    #@0
    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 2

    #@0
    .prologue
    .line 1272
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 1274
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@a
    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@12
    return-object v0

    #@13
    .line 1276
    :cond_0
    const/4 v0, 0x0

    #@14
    return-object v0
.end method

.method public getFilteredPosition()I
    .locals 1

    #@0
    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 1285
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@a
    return v0

    #@b
    .line 1287
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@6
    if-ltz v0, :cond_0

    #@8
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@a
    if-lt p1, v0, :cond_0

    #@c
    .line 1623
    add-int/lit8 p1, p1, 0x1

    #@e
    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@16
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1621
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1629
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    #@0
    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2
    return-object v0
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@0
    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getUnfilteredCount()I
    .locals 1

    #@0
    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1655
    move-object v0, p2

    #@1
    .line 1656
    .local v0, "view":Landroid/view/View;
    if-nez p2, :cond_0

    #@3
    .line 1657
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1659
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    #@e
    .line 1660
    return-object v0
.end method

.method public handlePackagesChanged()V
    .locals 1

    #@0
    .prologue
    .line 1263
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    #@3
    .line 1264
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    #@6
    .line 1265
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1267
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@11
    .line 1262
    :cond_0
    return-void
.end method

.method public hasExtendedInfo()Z
    .locals 1

    #@0
    .prologue
    .line 1633
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    #@2
    return v0
.end method

.method public hasFilteredItem()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1291
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@7
    if-ltz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 1637
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1638
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v2

    #@15
    invoke-static {p1, v2}, Lcom/android/internal/app/ResolverActivity;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 1639
    const/4 v2, 0x1

    #@1c
    return v2

    #@1d
    .line 1637
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1642
    :cond_1
    const/4 v2, 0x0

    #@21
    return v2
.end method

.method public isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1680
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    .line 1672
    const v1, 0x10900c5

    #@5
    const/4 v2, 0x0

    #@6
    .line 1671
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public onListRebuilt()V
    .locals 0

    #@0
    .prologue
    .line 1496
    return-void
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    #@0
    .prologue
    .line 1593
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@5
    move-result-object v0

    #@6
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@13
    goto :goto_0
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    #@0
    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@2
    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    .line 1676
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    #@0
    .prologue
    .line 1598
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@5
    move-result-object v0

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@f
    goto :goto_0
.end method
