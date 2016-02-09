.class public Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
.super Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListAdapter"
.end annotation


# static fields
.field private static final MAX_SERVICE_TARGETS:I = 0x8

.field public static final TARGET_BAD:I = -0x1

.field public static final TARGET_CALLER:I = 0x0

.field public static final TARGET_SERVICE:I = 0x1

.field public static final TARGET_STANDARD:I = 0x2


# instance fields
.field private final mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLateFee:F

.field private final mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 14
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
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
    .line 690
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2
    .line 695
    const/4 v5, 0x0

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move-object/from16 v3, p2

    #@7
    move-object/from16 v4, p3

    #@9
    move-object/from16 v6, p5

    #@b
    move/from16 v7, p6

    #@d
    move/from16 v8, p7

    #@f
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    #@12
    .line 682
    new-instance v1, Ljava/util/ArrayList;

    #@14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@19
    .line 683
    new-instance v1, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1e
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    #@20
    .line 685
    const/high16 v1, 0x3f800000    # 1.0f

    #@22
    iput v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    #@24
    .line 688
    new-instance v1, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    #@26
    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    #@29
    .line 687
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    #@2b
    .line 697
    if-eqz p4, :cond_4

    #@2d
    .line 698
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@30
    move-result-object v12

    #@31
    .line 699
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    #@32
    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p4

    #@34
    array-length v1, v0

    #@35
    if-ge v10, v1, :cond_4

    #@37
    .line 700
    aget-object v3, p4, v10

    #@39
    .line 701
    .local v3, "ii":Landroid/content/Intent;
    if-nez v3, :cond_0

    #@3b
    .line 699
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 704
    :cond_0
    const/4 v1, 0x0

    #@3f
    invoke-virtual {v3, v12, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    #@42
    move-result-object v9

    #@43
    .line 705
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v9, :cond_1

    #@45
    .line 706
    const-string/jumbo v1, "ChooserActivity"

    #@48
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "No activity found for "

    #@50
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    goto :goto_1

    #@60
    .line 709
    :cond_1
    new-instance v4, Landroid/content/pm/ResolveInfo;

    #@62
    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    #@65
    .line 710
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@67
    .line 712
    const-string/jumbo v1, "user"

    #@6a
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6d
    move-result-object v13

    #@6e
    check-cast v13, Landroid/os/UserManager;

    #@70
    .line 713
    .local v13, "userManager":Landroid/os/UserManager;
    instance-of v1, v3, Landroid/content/pm/LabeledIntent;

    #@72
    if-eqz v1, :cond_2

    #@74
    move-object v11, v3

    #@75
    .line 714
    check-cast v11, Landroid/content/pm/LabeledIntent;

    #@77
    .line 715
    .local v11, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@7d
    .line 716
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    #@80
    move-result v1

    #@81
    iput v1, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@83
    .line 717
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    #@86
    move-result-object v1

    #@87
    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@89
    .line 718
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    #@8c
    move-result v1

    #@8d
    iput v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    #@8f
    .line 719
    iget v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    #@91
    iput v1, v4, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@93
    .line 721
    .end local v11    # "li":Landroid/content/pm/LabeledIntent;
    :cond_2
    invoke-virtual {v13}, Landroid/os/UserManager;->isManagedProfile()Z

    #@96
    move-result v1

    #@97
    if-eqz v1, :cond_3

    #@99
    .line 722
    const/4 v1, 0x1

    #@9a
    iput-boolean v1, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    #@9c
    .line 723
    const/4 v1, 0x0

    #@9d
    iput v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    #@9f
    .line 725
    :cond_3
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    #@a1
    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@a3
    .line 726
    invoke-virtual {v4, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@a6
    move-result-object v5

    #@a7
    const/4 v6, 0x0

    #@a8
    move-object v2, p1

    #@a9
    move-object v7, v3

    #@aa
    .line 725
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    #@ad
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b0
    goto :goto_1

    #@b1
    .line 692
    .end local v3    # "ii":Landroid/content/Intent;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v10    # "i":I
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "userManager":Landroid/os/UserManager;
    :cond_4
    return-void
.end method

.method private insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V
    .locals 5
    .param p1, "chooserTargetInfo"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    #@0
    .prologue
    .line 861
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    #@3
    move-result v2

    #@4
    .line 862
    .local v2, "newScore":F
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@7
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@d
    .line 863
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@f
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    #@15
    .line 864
    .local v3, "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    #@18
    move-result v4

    #@19
    cmpl-float v4, v2, v4

    #@1b
    if-lez v4, :cond_0

    #@1d
    .line 865
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@1f
    invoke-interface {v4, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@22
    .line 866
    return-void

    #@23
    .line 862
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 869
    .end local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@28
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    .line 860
    return-void
.end method

.method private pruneServiceTargets()V
    .locals 3

    #@0
    .prologue
    .line 874
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 875
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@c
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    #@12
    .line 876
    .local v0, "cti":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 878
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@1e
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@21
    .line 874
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0

    #@24
    .line 872
    .end local v0    # "cti":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V
    .locals 9
    .param p1, "origTarget"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const v8, 0x3f733333    # 0.95f

    #@3
    .line 829
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    #@6
    move-result v3

    #@7
    .line 830
    .local v3, "parentScore":F
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    #@9
    invoke-static {p2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@c
    .line 831
    const/4 v2, 0x0

    #@d
    .line 832
    .local v2, "lastScore":F
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@11
    move-result v0

    #@12
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@14
    .line 833
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Landroid/service/chooser/ChooserTarget;

    #@1a
    .line 834
    .local v4, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getScore()F

    #@1d
    move-result v5

    #@1e
    .line 835
    .local v5, "targetScore":F
    mul-float/2addr v5, v3

    #@1f
    .line 836
    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    #@21
    mul-float/2addr v5, v6

    #@22
    .line 837
    if-lez v1, :cond_0

    #@24
    cmpl-float v6, v5, v2

    #@26
    if-ltz v6, :cond_0

    #@28
    .line 840
    mul-float v5, v2, v8

    #@2a
    .line 842
    :cond_0
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    #@2c
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2e
    invoke-direct {v6, v7, p1, v4, v5}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V

    #@31
    invoke-direct {p0, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V

    #@34
    .line 852
    move v2, v5

    #@35
    .line 832
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 855
    .end local v4    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v5    # "targetScore":F
    :cond_1
    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    #@3a
    mul-float/2addr v6, v8

    #@3b
    iput v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    #@3d
    .line 857
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->notifyDataSetChanged()V

    #@40
    .line 826
    return-void
.end method

.method public getCallerTargetCount()I
    .locals 1

    #@0
    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 758
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@c
    move-result v1

    #@d
    add-int/2addr v0, v1

    #@e
    return v0
.end method

.method public bridge synthetic getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDisplayInfoCount()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getDisplayInfoCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getFilteredPosition()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 803
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItemId(I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public bridge synthetic getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPositionTargetType(I)I
    .locals 5
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 781
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@4
    move-result v0

    #@5
    .line 782
    .local v0, "callerTargetCount":I
    if-ge p1, v0, :cond_0

    #@7
    .line 783
    return v4

    #@8
    .line 785
    :cond_0
    add-int/lit8 v1, v0, 0x0

    #@a
    .line 787
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    #@d
    move-result v2

    #@e
    .line 788
    .local v2, "serviceTargetCount":I
    sub-int v4, p1, v1

    #@10
    if-ge v4, v2, :cond_1

    #@12
    .line 789
    const/4 v4, 0x1

    #@13
    return v4

    #@14
    .line 791
    :cond_1
    add-int/2addr v1, v2

    #@15
    .line 793
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    #@18
    move-result v3

    #@19
    .line 794
    .local v3, "standardTargetCount":I
    sub-int v4, p1, v1

    #@1b
    if-ge v4, v3, :cond_2

    #@1d
    .line 795
    const/4 v4, 0x2

    #@1e
    return v4

    #@1f
    .line 798
    :cond_2
    const/4 v4, -0x1

    #@20
    return v4
.end method

.method public bridge synthetic getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getServiceTargetCount()I
    .locals 2

    #@0
    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x8

    #@8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getStandardTargetCount()I
    .locals 1

    #@0
    .prologue
    .line 775
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getUnfilteredCount()I
    .locals 2

    #@0
    .prologue
    .line 763
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@c
    move-result v1

    #@d
    add-int/2addr v0, v1

    #@e
    return v0
.end method

.method public bridge synthetic handlePackagesChanged()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    #@3
    return-void
.end method

.method public bridge synthetic hasExtendedInfo()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasExtendedInfo()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic hasFilteredItem()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    .line 741
    const v1, 0x10900bd

    #@5
    const/4 v2, 0x0

    #@6
    .line 740
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public onListRebuilt()V
    .locals 1

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 747
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->pruneServiceTargets()V

    #@7
    .line 745
    :cond_0
    return-void
.end method

.method public bridge synthetic resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    #@0
    .prologue
    .line 753
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@0
    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->hasExtendedInfo()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 5
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    #@0
    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@3
    move-result v0

    #@4
    .line 811
    .local v0, "callerTargetCount":I
    if-ge p1, v0, :cond_0

    #@6
    .line 812
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    #@8
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@e
    return-object v3

    #@f
    .line 814
    :cond_0
    add-int/lit8 v1, v0, 0x0

    #@11
    .line 816
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    #@14
    move-result v2

    #@15
    .line 817
    .local v2, "serviceTargetCount":I
    sub-int v3, p1, v1

    #@17
    if-ge v3, v2, :cond_1

    #@19
    .line 818
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    #@1b
    sub-int v4, p1, v1

    #@1d
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@23
    return-object v3

    #@24
    .line 820
    :cond_1
    add-int/2addr v1, v2

    #@25
    .line 822
    if-eqz p2, :cond_2

    #@27
    sub-int v3, p1, v1

    #@29
    invoke-super {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@2c
    move-result-object v3

    #@2d
    :goto_0
    return-object v3

    #@2e
    .line 823
    :cond_2
    sub-int v3, p1, v1

    #@30
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@33
    move-result-object v3

    #@34
    goto :goto_0
.end method
