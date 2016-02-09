.class Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
    .line 1112
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 1109
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@8
    .line 1115
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    #@a
    .line 1116
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    #@c
    .line 1117
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    #@e
    .line 1118
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    #@10
    .line 1119
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@16
    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@1d
    .line 1121
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@1f
    .line 1122
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    #@22
    .line 1114
    return-void
.end method

.method private addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@0
    .prologue
    .line 1437
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
    .line 1440
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@f
    .line 1436
    :goto_0
    return-void

    #@10
    .line 1442
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
    .line 1410
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    #@4
    move-result v9

    #@5
    .line 1411
    .local v9, "count":I
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    #@8
    move-result-object v2

    #@9
    .line 1412
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@c
    move-result-object v3

    #@d
    .line 1413
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@f
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@11
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    #@14
    move-result-object v6

    #@15
    .line 1414
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
    .line 1416
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    #@21
    .line 1417
    if-ne v6, v2, :cond_0

    #@23
    .line 1420
    const/4 v10, 0x1

    #@24
    .local v10, "i":I
    move v7, v9

    #@25
    .local v7, "N":I
    :goto_0
    if-ge v10, v7, :cond_0

    #@27
    .line 1421
    invoke-virtual {p1, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    #@2a
    move-result-object v8

    #@2b
    .line 1422
    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    #@2e
    .line 1420
    add-int/lit8 v10, v10, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1425
    .end local v7    # "N":I
    .end local v8    # "altIntent":Landroid/content/Intent;
    .end local v10    # "i":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    #@34
    .line 1409
    return-void
.end method

.method private addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 11
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
    .line 1323
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    .line 1324
    .local v1, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@7
    move-result v3

    #@8
    .line 1325
    .local v3, "intoCount":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    #@b
    .line 1326
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v5

    #@f
    check-cast v5, Landroid/content/pm/ResolveInfo;

    #@11
    .line 1327
    .local v5, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    #@12
    .line 1329
    .local v0, "found":Z
    const/4 v4, 0x0

    #@13
    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    #@15
    .line 1330
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v6

    #@19
    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@1b
    .line 1331
    .local v6, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-direct {p0, v5, v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_2

    #@21
    .line 1332
    const/4 v0, 0x1

    #@22
    .line 1333
    invoke-virtual {v6, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    #@25
    .line 1337
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_0
    if-nez v0, :cond_1

    #@27
    .line 1338
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@29
    new-instance v8, Landroid/content/ComponentName;

    #@2b
    .line 1339
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2d
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2f
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@31
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@33
    .line 1338
    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    invoke-direct {v7, v8, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    #@39
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3c
    .line 1325
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1329
    .restart local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@41
    goto :goto_1

    #@42
    .line 1322
    .end local v0    # "found":Z
    .end local v4    # "j":I
    .end local v5    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3
    return-void
.end method

.method private isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@0
    .prologue
    .line 1346
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    .line 1347
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
    .line 1348
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
    .line 1347
    :goto_0
    return v1

    #@1d
    :cond_0
    const/4 v1, 0x0

    #@1e
    goto :goto_0
.end method

.method private onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const/4 v5, 0x0

    #@3
    .line 1538
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    #@9
    .line 1539
    .local v1, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    #@b
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@12
    .line 1540
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_2

    #@18
    .line 1541
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    #@1a
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    #@1d
    .line 1542
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    #@1f
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@26
    .line 1546
    :goto_0
    instance-of v2, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@28
    if-eqz v2, :cond_0

    #@2a
    move-object v2, p2

    #@2b
    .line 1547
    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2d
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_3

    #@33
    .line 1550
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    #@35
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3c
    .line 1551
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@3e
    if-eqz v2, :cond_1

    #@40
    .line 1552
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    #@43
    move-result-object v0

    #@44
    .line 1553
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    #@46
    .line 1554
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@48
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@4b
    .line 1555
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@4d
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@54
    .line 1556
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@56
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    #@59
    .line 1537
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_2
    return-void

    #@5a
    .line 1544
    :cond_2
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    #@5c
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    #@5f
    goto :goto_0

    #@60
    .line 1548
    :cond_3
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;

    #@62
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@64
    move-object v2, p2

    #@65
    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@67
    invoke-direct {v3, v4, v2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    #@6a
    new-array v2, v5, [Ljava/lang/Void;

    #@6c
    invoke-virtual {v3, v2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@6f
    goto :goto_1

    #@70
    .line 1558
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    #@72
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    #@75
    goto :goto_2
.end method

.method private processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V
    .locals 15
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
    .line 1362
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    sub-int v13, p3, p2

    #@2
    add-int/lit8 v9, v13, 0x1

    #@4
    .line 1363
    .local v9, "num":I
    const/4 v13, 0x1

    #@5
    if-ne v9, v13, :cond_1

    #@7
    .line 1365
    const/4 v13, 0x0

    #@8
    move-object/from16 v0, p4

    #@a
    move-object/from16 v1, p5

    #@c
    invoke-direct {p0, v0, v13, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@f
    .line 1360
    :cond_0
    return-void

    #@10
    .line 1367
    :cond_1
    const/4 v13, 0x1

    #@11
    iput-boolean v13, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    #@13
    .line 1368
    const/4 v12, 0x0

    #@14
    .line 1369
    .local v12, "usePkg":Z
    const/4 v13, 0x0

    #@15
    move-object/from16 v0, p4

    #@17
    invoke-virtual {v0, v13}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@1a
    move-result-object v13

    #@1b
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1d
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1f
    .line 1370
    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@21
    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@24
    move-result-object v14

    #@25
    .line 1369
    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@28
    move-result-object v11

    #@29
    .line 1371
    .local v11, "startApp":Ljava/lang/CharSequence;
    if-nez v11, :cond_2

    #@2b
    .line 1372
    const/4 v12, 0x1

    #@2c
    .line 1374
    :cond_2
    if-nez v12, :cond_5

    #@2e
    .line 1377
    new-instance v3, Ljava/util/HashSet;

    #@30
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@33
    .line 1378
    .local v3, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@36
    .line 1379
    add-int/lit8 v5, p2, 0x1

    #@38
    .local v5, "j":I
    :goto_0
    move/from16 v0, p3

    #@3a
    if-gt v5, v0, :cond_4

    #@3c
    .line 1380
    move-object/from16 v0, p1

    #@3e
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v13

    #@42
    check-cast v13, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@44
    const/4 v14, 0x0

    #@45
    invoke-virtual {v13, v14}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@48
    move-result-object v7

    #@49
    .line 1381
    .local v7, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4b
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4d
    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@4f
    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@52
    move-result-object v14

    #@53
    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@56
    move-result-object v6

    #@57
    .line 1382
    .local v6, "jApp":Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    #@59
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5c
    move-result v13

    #@5d
    if-eqz v13, :cond_6

    #@5f
    .line 1383
    :cond_3
    const/4 v12, 0x1

    #@60
    .line 1390
    .end local v6    # "jApp":Ljava/lang/CharSequence;
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    #@63
    .line 1392
    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v5    # "j":I
    :cond_5
    move/from16 v8, p2

    #@65
    .local v8, "k":I
    :goto_1
    move/from16 v0, p3

    #@67
    if-gt v8, v0, :cond_0

    #@69
    .line 1393
    move-object/from16 v0, p1

    #@6b
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6e
    move-result-object v10

    #@6f
    check-cast v10, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@71
    .line 1394
    .local v10, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v13, 0x0

    #@72
    invoke-virtual {v10, v13}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@75
    move-result-object v2

    #@76
    .line 1396
    .local v2, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_7

    #@78
    .line 1398
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7a
    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@7c
    .line 1403
    .local v4, "extraInfo":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p5

    #@7e
    invoke-direct {p0, v10, v4, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@81
    .line 1392
    add-int/lit8 v8, v8, 0x1

    #@83
    goto :goto_1

    #@84
    .line 1386
    .end local v2    # "add":Landroid/content/pm/ResolveInfo;
    .end local v4    # "extraInfo":Ljava/lang/CharSequence;
    .end local v8    # "k":I
    .end local v10    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v5    # "j":I
    .restart local v6    # "jApp":Ljava/lang/CharSequence;
    .restart local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@87
    .line 1379
    add-int/lit8 v5, v5, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 1401
    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v5    # "j":I
    .end local v6    # "jApp":Ljava/lang/CharSequence;
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "k":I
    .restart local v10    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_7
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8c
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8e
    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@90
    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@93
    move-result-object v14

    #@94
    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@97
    move-result-object v4

    #@98
    .restart local v4    # "extraInfo":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private rebuildList()V
    .locals 29

    #@0
    .prologue
    .line 1162
    const/4 v15, 0x0

    #@1
    .line 1165
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
    .line 1166
    .local v21, "primaryIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@c
    move-result-object v3

    #@d
    .line 1167
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
    .line 1168
    const/high16 v7, 0x10000

    #@1d
    .line 1166
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
    .line 1174
    .end local v21    # "primaryIntent":Landroid/content/Intent;
    :goto_0
    const/4 v3, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2c
    .line 1175
    move-object/from16 v0, p0

    #@2e
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@30
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@33
    .line 1176
    move-object/from16 v0, p0

    #@35
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 1177
    new-instance v15, Ljava/util/ArrayList;

    #@3b
    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@3e
    move-object/from16 v0, p0

    #@40
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@42
    .line 1178
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
    .line 1219
    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_0
    if-eqz v15, :cond_17

    #@55
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@58
    move-result v13

    #@59
    .local v13, "N":I
    if-lez v13, :cond_17

    #@5b
    .line 1222
    const/4 v3, 0x0

    #@5c
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v11

    #@60
    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@62
    .line 1223
    .local v11, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    #@63
    invoke-virtual {v11, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@66
    move-result-object v22

    #@67
    .line 1224
    .local v22, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x1

    #@69
    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    #@6b
    if-ge v0, v13, :cond_c

    #@6d
    .line 1225
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
    .line 1232
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v22

    #@7c
    iget v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    #@7e
    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    #@80
    if-ne v3, v4, :cond_1

    #@82
    .line 1233
    move-object/from16 v0, v22

    #@84
    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@86
    iget-boolean v4, v6, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@88
    if-eq v3, v4, :cond_b

    #@8a
    .line 1234
    :cond_1
    :goto_2
    move/from16 v0, v17

    #@8c
    if-ge v0, v13, :cond_b

    #@8e
    .line 1235
    move-object/from16 v0, p0

    #@90
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@92
    if-ne v3, v15, :cond_2

    #@94
    .line 1236
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
    .line 1238
    :cond_2
    move/from16 v0, v17

    #@a3
    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@a6
    .line 1239
    add-int/lit8 v13, v13, -0x1

    #@a8
    goto :goto_2

    #@a9
    .line 1169
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v13    # "N":I
    .end local v17    # "i":I
    .end local v22    # "r0":Landroid/content/pm/ResolveInfo;
    .local v15, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :catch_0
    move-exception v24

    #@aa
    .line 1170
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
    .line 1180
    .end local v24    # "re":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->shouldGetResolvedFilter()Z

    #@cb
    move-result v27

    #@cc
    .line 1181
    .local v27, "shouldGetResolvedFilter":Z
    move-object/from16 v0, p0

    #@ce
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@d0
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->shouldGetActivityMetadata()Z

    #@d3
    move-result v26

    #@d4
    .line 1182
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
    .line 1183
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
    .line 1184
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@f0
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@f2
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@f5
    move-result-object v4

    #@f6
    .line 1186
    if-eqz v27, :cond_6

    #@f8
    const/16 v3, 0x40

    #@fa
    .line 1185
    :goto_4
    const/high16 v7, 0x10000

    #@fc
    or-int/2addr v7, v3

    #@fd
    .line 1187
    if-eqz v26, :cond_7

    #@ff
    const/16 v3, 0x80

    #@101
    .line 1185
    :goto_5
    or-int/2addr v3, v7

    #@102
    .line 1184
    move-object/from16 v0, v19

    #@104
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@107
    move-result-object v18

    #@108
    .line 1188
    .local v18, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v18, :cond_5

    #@10a
    .line 1189
    if-nez v15, :cond_4

    #@10c
    .line 1190
    new-instance v15, Ljava/util/ArrayList;

    #@10e
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@111
    move-object/from16 v0, p0

    #@113
    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@115
    .line 1192
    :cond_4
    move-object/from16 v0, p0

    #@117
    move-object/from16 v1, v19

    #@119
    move-object/from16 v2, v18

    #@11b
    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    #@11e
    .line 1182
    :cond_5
    add-int/lit8 v17, v17, 0x1

    #@120
    goto :goto_3

    #@121
    .line 1186
    .end local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    const/4 v3, 0x0

    #@122
    goto :goto_4

    #@123
    .line 1187
    :cond_7
    const/4 v3, 0x0

    #@124
    goto :goto_5

    #@125
    .line 1201
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_8
    if-eqz v15, :cond_0

    #@127
    .line 1202
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@12a
    move-result v3

    #@12b
    add-int/lit8 v17, v3, -0x1

    #@12d
    :goto_6
    if-ltz v17, :cond_0

    #@12f
    .line 1203
    move/from16 v0, v17

    #@131
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@134
    move-result-object v3

    #@135
    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@137
    .line 1204
    const/4 v4, 0x0

    #@138
    .line 1203
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@13b
    move-result-object v3

    #@13c
    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@13e
    .line 1206
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@140
    move-object/from16 v0, p0

    #@142
    iget v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    #@144
    .line 1207
    iget-object v7, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@146
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@148
    iget-boolean v8, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    #@14a
    .line 1205
    invoke-static {v3, v4, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@14d
    move-result v16

    #@14e
    .line 1208
    .local v16, "granted":I
    if-eqz v16, :cond_a

    #@150
    .line 1210
    move-object/from16 v0, p0

    #@152
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@154
    if-ne v3, v15, :cond_9

    #@156
    .line 1211
    new-instance v3, Ljava/util/ArrayList;

    #@158
    move-object/from16 v0, p0

    #@15a
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@15c
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@15f
    move-object/from16 v0, p0

    #@161
    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    #@163
    .line 1213
    :cond_9
    move/from16 v0, v17

    #@165
    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@168
    .line 1202
    :cond_a
    add-int/lit8 v17, v17, -0x1

    #@16a
    goto :goto_6

    #@16b
    .line 1224
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v16    # "granted":I
    .end local v26    # "shouldGetActivityMetadata":Z
    .end local v27    # "shouldGetResolvedFilter":Z
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v22    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_b
    add-int/lit8 v17, v17, 0x1

    #@16d
    goto/16 :goto_1

    #@16f
    .line 1243
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_c
    const/4 v3, 0x1

    #@170
    if-le v13, v3, :cond_d

    #@172
    .line 1244
    move-object/from16 v0, p0

    #@174
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@176
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    #@179
    move-result-object v3

    #@17a
    invoke-virtual {v3, v15}, Lcom/android/internal/app/ResolverComparator;->compute(Ljava/util/List;)V

    #@17d
    .line 1245
    move-object/from16 v0, p0

    #@17f
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@181
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    #@184
    move-result-object v3

    #@185
    invoke-static {v15, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@188
    .line 1248
    :cond_d
    move-object/from16 v0, p0

    #@18a
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    #@18c
    if-eqz v3, :cond_12

    #@18e
    .line 1249
    const/16 v17, 0x0

    #@190
    :goto_7
    move-object/from16 v0, p0

    #@192
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    #@194
    array-length v3, v3

    #@195
    move/from16 v0, v17

    #@197
    if-ge v0, v3, :cond_12

    #@199
    .line 1250
    move-object/from16 v0, p0

    #@19b
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    #@19d
    aget-object v5, v3, v17

    #@19f
    .line 1251
    .local v5, "ii":Landroid/content/Intent;
    if-nez v5, :cond_e

    #@1a1
    .line 1249
    :goto_8
    add-int/lit8 v17, v17, 0x1

    #@1a3
    goto :goto_7

    #@1a4
    .line 1255
    :cond_e
    move-object/from16 v0, p0

    #@1a6
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@1a8
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1ab
    move-result-object v3

    #@1ac
    const/4 v4, 0x0

    #@1ad
    .line 1254
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    #@1b0
    move-result-object v14

    #@1b1
    .line 1256
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_f

    #@1b3
    .line 1257
    const-string/jumbo v3, "ResolverActivity"

    #@1b6
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1bb
    const-string/jumbo v7, "No activity found for "

    #@1be
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v4

    #@1c2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v4

    #@1c6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c9
    move-result-object v4

    #@1ca
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1cd
    goto :goto_8

    #@1ce
    .line 1260
    :cond_f
    new-instance v6, Landroid/content/pm/ResolveInfo;

    #@1d0
    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    #@1d3
    .line 1261
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1d5
    .line 1263
    move-object/from16 v0, p0

    #@1d7
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@1d9
    const-string/jumbo v4, "user"

    #@1dc
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1df
    move-result-object v28

    #@1e0
    check-cast v28, Landroid/os/UserManager;

    #@1e2
    .line 1264
    .local v28, "userManager":Landroid/os/UserManager;
    instance-of v3, v5, Landroid/content/pm/LabeledIntent;

    #@1e4
    if-eqz v3, :cond_10

    #@1e6
    move-object/from16 v20, v5

    #@1e8
    .line 1265
    check-cast v20, Landroid/content/pm/LabeledIntent;

    #@1ea
    .line 1266
    .local v20, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    #@1ed
    move-result-object v3

    #@1ee
    iput-object v3, v6, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@1f0
    .line 1267
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    #@1f3
    move-result v3

    #@1f4
    iput v3, v6, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@1f6
    .line 1268
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    #@1f9
    move-result-object v3

    #@1fa
    iput-object v3, v6, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1fc
    .line 1269
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    #@1ff
    move-result v3

    #@200
    iput v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    #@202
    .line 1270
    iget v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    #@204
    iput v3, v6, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@206
    .line 1272
    .end local v20    # "li":Landroid/content/pm/LabeledIntent;
    :cond_10
    invoke-virtual/range {v28 .. v28}, Landroid/os/UserManager;->isManagedProfile()Z

    #@209
    move-result v3

    #@20a
    if-eqz v3, :cond_11

    #@20c
    .line 1273
    const/4 v3, 0x1

    #@20d
    iput-boolean v3, v6, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    #@20f
    .line 1274
    const/4 v3, 0x0

    #@210
    iput v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    #@212
    .line 1276
    :cond_11
    new-instance v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@214
    move-object/from16 v0, p0

    #@216
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@218
    .line 1277
    move-object/from16 v0, p0

    #@21a
    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@21c
    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@21f
    move-result-object v7

    #@220
    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@223
    move-result-object v7

    #@224
    const/4 v8, 0x0

    #@225
    move-object v9, v5

    #@226
    .line 1276
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    #@229
    move-object/from16 v0, p0

    #@22b
    invoke-direct {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    #@22e
    goto/16 :goto_8

    #@230
    .line 1283
    .end local v5    # "ii":Landroid/content/Intent;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v28    # "userManager":Landroid/os/UserManager;
    :cond_12
    const/4 v3, 0x0

    #@231
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@234
    move-result-object v11

    #@235
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@237
    .line 1284
    .restart local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    #@238
    invoke-virtual {v11, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@23b
    move-result-object v22

    #@23c
    .line 1285
    const/4 v9, 0x0

    #@23d
    .line 1286
    .local v9, "start":I
    move-object/from16 v0, p0

    #@23f
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@241
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@244
    move-result-object v3

    #@245
    move-object/from16 v0, v22

    #@247
    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@24a
    move-result-object v12

    #@24b
    .line 1287
    .local v12, "r0Label":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    #@24c
    move-object/from16 v0, p0

    #@24e
    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    #@250
    .line 1288
    const/16 v17, 0x1

    #@252
    :goto_9
    move/from16 v0, v17

    #@254
    if-ge v0, v13, :cond_16

    #@256
    .line 1289
    if-nez v12, :cond_13

    #@258
    .line 1290
    move-object/from16 v0, v22

    #@25a
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@25c
    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@25e
    .line 1292
    :cond_13
    move/from16 v0, v17

    #@260
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@263
    move-result-object v23

    #@264
    check-cast v23, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    #@266
    .line 1293
    .local v23, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    #@267
    move-object/from16 v0, v23

    #@269
    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    #@26c
    move-result-object v6

    #@26d
    .line 1294
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    #@26f
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@271
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    #@274
    move-result-object v3

    #@275
    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@278
    move-result-object v25

    #@279
    .line 1295
    .local v25, "riLabel":Ljava/lang/CharSequence;
    if-nez v25, :cond_14

    #@27b
    .line 1296
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@27d
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@27f
    move-object/from16 v25, v0

    #@281
    .line 1298
    :cond_14
    move-object/from16 v0, v25

    #@283
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@286
    move-result v3

    #@287
    if-eqz v3, :cond_15

    #@289
    .line 1288
    :goto_a
    add-int/lit8 v17, v17, 0x1

    #@28b
    goto :goto_9

    #@28c
    .line 1301
    :cond_15
    add-int/lit8 v10, v17, -0x1

    #@28e
    move-object/from16 v7, p0

    #@290
    move-object v8, v15

    #@291
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    #@294
    .line 1302
    move-object/from16 v11, v23

    #@296
    .line 1303
    move-object/from16 v22, v6

    #@298
    .line 1304
    move-object/from16 v12, v25

    #@29a
    .line 1305
    move/from16 v9, v17

    #@29c
    goto :goto_a

    #@29d
    .line 1308
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v23    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v25    # "riLabel":Ljava/lang/CharSequence;
    :cond_16
    add-int/lit8 v10, v13, -0x1

    #@29f
    move-object/from16 v7, p0

    #@2a1
    move-object v8, v15

    #@2a2
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    #@2a5
    .line 1313
    .end local v9    # "start":I
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v12    # "r0Label":Ljava/lang/CharSequence;
    .end local v13    # "N":I
    .end local v17    # "i":I
    .end local v22    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_17
    move-object/from16 v0, p0

    #@2a7
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2a9
    if-eqz v3, :cond_18

    #@2ab
    move-object/from16 v0, p0

    #@2ad
    iget v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@2af
    if-ltz v3, :cond_18

    #@2b1
    .line 1314
    const/4 v3, -0x1

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    iput v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@2b6
    .line 1315
    const/4 v3, 0x0

    #@2b7
    move-object/from16 v0, p0

    #@2b9
    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@2bb
    .line 1318
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onListRebuilt()V

    #@2be
    .line 1161
    return-void
.end method

.method private updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1430
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
    .line 1429
    if-eqz v0, :cond_0

    #@14
    .line 1431
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
    .line 1429
    if-eqz v0, :cond_0

    #@24
    .line 1432
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
    .line 1428
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
    .line 1534
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    #@7
    .line 1533
    return-void
.end method

.method public final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1518
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object v1

    #@4
    .line 1519
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    #@6
    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    #@9
    .line 1520
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@c
    .line 1521
    return-object v1
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 1456
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    .line 1457
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@c
    if-ltz v1, :cond_0

    #@e
    .line 1458
    add-int/lit8 v0, v0, -0x1

    #@10
    .line 1460
    :cond_0
    return v0
.end method

.method public getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1472
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
    .line 1468
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1505
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

.method protected getDisplayResolveInfoCount()I
    .locals 1

    #@0
    .prologue
    .line 1500
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
    .line 1135
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 1137
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
    .line 1139
    :cond_0
    const/4 v0, 0x0

    #@14
    return-object v0
.end method

.method public getFilteredPosition()I
    .locals 1

    #@0
    .prologue
    .line 1147
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 1148
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    #@a
    return v0

    #@b
    .line 1150
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
    .line 1476
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
    .line 1477
    add-int/lit8 p1, p1, 0x1

    #@e
    .line 1479
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
    .line 1475
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
    .line 1483
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    #@0
    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2
    return-object v0
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@0
    .prologue
    .line 1158
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
    .line 1464
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
    .line 1509
    move-object v0, p2

    #@1
    .line 1510
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    #@3
    .line 1511
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1513
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    #@e
    .line 1514
    return-object v0
.end method

.method public handlePackagesChanged()V
    .locals 1

    #@0
    .prologue
    .line 1126
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    #@3
    .line 1127
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    #@6
    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1130
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@11
    .line 1125
    :cond_0
    return-void
.end method

.method public hasExtendedInfo()Z
    .locals 1

    #@0
    .prologue
    .line 1487
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
    .line 1154
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
    .line 1491
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
    .line 1492
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
    .line 1493
    const/4 v2, 0x1

    #@1c
    return v2

    #@1d
    .line 1491
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1496
    :cond_1
    const/4 v2, 0x0

    #@21
    return v2
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    .line 1526
    const v1, 0x10900be

    #@5
    const/4 v2, 0x0

    #@6
    .line 1525
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
    .line 1351
    return-void
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    #@0
    .prologue
    .line 1447
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
    .line 1356
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    #@2
    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    .line 1530
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
    .line 1452
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
