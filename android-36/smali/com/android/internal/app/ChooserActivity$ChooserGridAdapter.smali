.class public final Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChooserGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist NUM_EXPANSIONS_TO_HIDE_AZ_LABEL:I = 0x14

.field private static final blacklist VIEW_TYPE_AZ_LABEL:I = 0x4

.field private static final blacklist VIEW_TYPE_CALLER_AND_RANK:I = 0x5

.field private static final blacklist VIEW_TYPE_CONTENT_PREVIEW:I = 0x2

.field private static final blacklist VIEW_TYPE_DIRECT_SHARE:I = 0x0

.field private static final blacklist VIEW_TYPE_FOOTER:I = 0x6

.field private static final blacklist VIEW_TYPE_NORMAL:I = 0x1

.field private static final blacklist VIEW_TYPE_PROFILE:I = 0x3


# instance fields
.field private final blacklist mBoundViewHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/ChooserActivity$ViewHolderBase;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

.field private blacklist mChooserTargetWidth:I

.field private blacklist mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

.field private blacklist mFooterHeight:I

.field private final blacklist mLayoutInflater:Landroid/view/LayoutInflater;

.field private blacklist mLayoutRequested:Z

.field private blacklist mShowAzLabelIfPoss:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public static synthetic blacklist $r8$lambda$6sUy3a4sVEAR-G2_W1RHusActJc(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->onTargetIconLoaded(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3220
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 3221
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 3202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    .line 3204
    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 3206
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    .line 3218
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mBoundViewHolders:Ljava/util/Set;

    .line 3222
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3223
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 3225
    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mgetNumSheetExpansions(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_24

    const/4 v0, 0x1

    :cond_24
    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mShowAzLabelIfPoss:Z

    .line 3227
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3240
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->notifySingleItemChangeOnIconLoad()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3241
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserListAdapter;->setOnIconLoadedListener(Ljava/util/function/Consumer;)V

    .line 3243
    :cond_3c
    return-void
.end method

.method private blacklist canExpandDirectShare()Z
    .registers 2

    .line 3721
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 3484
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x109005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 3476
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3477
    .local v0, "profileRow":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v2, 0x1020491

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/ChooserActivity;->mProfileView:Landroid/view/View;

    .line 3478
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mProfileView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v3, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3479
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->updateProfileViewButton()V

    .line 3480
    return-object v0
.end method

.method private blacklist loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .registers 13
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 3488
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3489
    .local v1, "spec":I
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3491
    .local v2, "exactSpec":I
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v3

    .line 3493
    .local v3, "columnCount":I
    instance-of v4, p1, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    .line 3495
    .local v4, "isDirectShare":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v3, :cond_57

    .line 3496
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p1, v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 3497
    .local v6, "v":Landroid/view/View;
    move v7, v5

    .line 3498
    .local v7, "column":I
    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;

    invoke-direct {v8, p0, p1, v7}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3505
    invoke-virtual {p1, v5, v6}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->addView(ILandroid/view/View;)Landroid/view/ViewGroup;

    .line 3510
    if-eqz v4, :cond_46

    .line 3511
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 3512
    .local v8, "vh":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 3513
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 3514
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3518
    .end local v8    # "vh":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    :cond_46
    invoke-virtual {v6, v2, v1}, Landroid/view/View;->measure(II)V

    .line 3519
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 3495
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "column":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 3522
    .end local v5    # "i":I
    :cond_57
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    .line 3525
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->measure()V

    .line 3526
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getMeasuredRowHeight()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {p0, v5, v7, v6}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 3528
    if-eqz v4, :cond_82

    .line 3529
    move-object v6, p1

    check-cast v6, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    .line 3530
    .local v6, "dsvh":Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getMinRowHeight()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 3531
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getMinRowHeight()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 3534
    .end local v6    # "dsvh":Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
    :cond_82
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 3535
    return-object p1
.end method

.method private blacklist onTargetIconLoaded(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 6
    .param p1, "info"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 3246
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;

    .line 3247
    .local v1, "holder":Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->getViewType()I

    move-result v2

    sparse-switch v2, :sswitch_data_42

    goto :goto_3f

    .line 3257
    :sswitch_1a
    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 3258
    .local v2, "groupHolder":Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    invoke-direct {p0, v2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->suggestedAppsGroupContainsTarget(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 3259
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->notifyItemChanged(I)V

    goto :goto_3f

    .line 3249
    .end local v2    # "groupHolder":Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    :sswitch_2b
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    move-object v3, v1

    check-cast v3, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget v3, v3, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    .line 3250
    invoke-virtual {v2, v3}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v2

    .line 3252
    .local v2, "itemInfo":Lcom/android/internal/app/chooser/TargetInfo;
    if-ne p1, v2, :cond_3f

    .line 3253
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->notifyItemChanged(I)V

    .line 3264
    .end local v1    # "holder":Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
    .end local v2    # "itemInfo":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_3f
    :goto_3f
    goto :goto_6

    .line 3265
    :cond_40
    return-void

    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_2b
        0x5 -> :sswitch_1a
    .end sparse-switch
.end method

.method private blacklist setViewBounds(Landroid/view/View;II)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthPx"    # I
    .param p3, "heightPx"    # I

    .line 3539
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3540
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_10

    .line 3541
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 3542
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    .line 3544
    :cond_10
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3545
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3547
    :goto_14
    return-void
.end method

.method private blacklist suggestedAppsGroupContainsTarget(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .registers 12
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .param p2, "info"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 3663
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getAdapterPosition()I

    move-result v0

    .line 3664
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    .line 3665
    .local v1, "start":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v2

    .line 3667
    .local v2, "startType":I
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v3

    .line 3668
    .local v3, "columnCount":I
    add-int v4, v1, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 3669
    .local v4, "end":I
    :goto_14
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v6

    if-eq v6, v2, :cond_1f

    if-lt v4, v1, :cond_1f

    .line 3670
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 3673
    :cond_1f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_20
    if-ge v6, v3, :cond_36

    .line 3674
    add-int v7, v1, v6

    if-gt v7, v4, :cond_33

    .line 3675
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p1, v6}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v7

    if-ne v7, p2, :cond_33

    .line 3676
    return v5

    .line 3673
    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 3680
    .end local v6    # "i":I
    :cond_36
    const/4 v5, 0x0

    return v5
.end method


# virtual methods
.method blacklist bindItemGroupViewHolder(ILcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)V
    .registers 20
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 3607
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 3608
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v3

    .line 3609
    .local v3, "start":I
    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v4

    .line 3611
    .local v4, "startType":I
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v5

    .line 3612
    .local v5, "columnCount":I
    add-int v6, v3, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 3613
    .local v6, "end":I
    :goto_18
    invoke-virtual {v0, v6}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v8

    if-eq v8, v4, :cond_23

    if-lt v6, v3, :cond_23

    .line 3614
    add-int/lit8 v6, v6, -0x1

    goto :goto_18

    .line 3617
    :cond_23
    const/4 v8, 0x0

    if-ne v6, v3, :cond_a6

    iget-object v9, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v9, v3}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v9, :cond_a6

    .line 3618
    const v9, 0x102027b

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 3620
    .local v9, "textView":Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_a3

    .line 3621
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3622
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3623
    const v11, 0x10401eb

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 3625
    const/4 v11, 0x2

    new-array v12, v11, [F

    fill-array-data v12, :array_d4

    const-string v13, "alpha"

    invoke-static {v9, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 3626
    .local v12, "fadeAnim":Landroid/animation/ValueAnimator;
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v13, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3628
    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v13}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x10500d2

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    .line 3630
    .local v13, "translationInPx":F
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3631
    new-array v15, v7, [F

    aput v10, v15, v8

    const-string/jumbo v10, "translationY"

    invoke-static {v9, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 3633
    .local v10, "translateAnim":Landroid/animation/ValueAnimator;
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v10, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3635
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3636
    .local v14, "animSet":Landroid/animation/AnimatorSet;
    move v15, v7

    move/from16 v16, v8

    const-wide/16 v7, 0xc8

    invoke-virtual {v14, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3637
    invoke-virtual {v14, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3638
    new-array v7, v11, [Landroid/animation/Animator;

    aput-object v12, v7, v16

    aput-object v10, v7, v15

    invoke-virtual {v14, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3639
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a8

    .line 3620
    .end local v10    # "translateAnim":Landroid/animation/ValueAnimator;
    .end local v12    # "fadeAnim":Landroid/animation/ValueAnimator;
    .end local v13    # "translationInPx":F
    .end local v14    # "animSet":Landroid/animation/AnimatorSet;
    :cond_a3
    move/from16 v16, v8

    goto :goto_a8

    .line 3617
    .end local v9    # "textView":Landroid/widget/TextView;
    :cond_a6
    move/from16 v16, v8

    .line 3643
    :goto_a8
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a9
    if-ge v7, v5, :cond_d2

    .line 3644
    invoke-virtual {v1, v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    .line 3646
    .local v8, "v":Landroid/view/View;
    add-int v9, v3, v7

    if-gt v9, v6, :cond_c7

    .line 3647
    move/from16 v9, v16

    invoke-virtual {v1, v7, v9}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 3648
    add-int v10, v3, v7

    invoke-virtual {v1, v7, v10}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setItemIndex(II)V

    .line 3649
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1, v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v11

    invoke-virtual {v10, v11, v8}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    goto :goto_cd

    .line 3651
    :cond_c7
    move/from16 v9, v16

    const/4 v10, 0x4

    invoke-virtual {v1, v7, v10}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 3643
    .end local v8    # "v":Landroid/view/View;
    :goto_cd
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v9

    goto :goto_a9

    .line 3654
    .end local v7    # "i":I
    :cond_d2
    return-void

    nop

    :array_d4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method blacklist bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$ItemViewHolder;)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    .line 3600
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->itemView:Landroid/view/View;

    .line 3601
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    .line 3602
    .local v1, "listPosition":I
    iput v1, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    .line 3603
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 3604
    return-void
.end method

.method public blacklist calculateChooserTargetWidth(I)Z
    .registers 6
    .param p1, "width"    # I

    .line 3278
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3279
    return v0

    .line 3283
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3284
    .local v1, "maxWidth":I
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3286
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    div-int v2, p1, v2

    .line 3287
    .local v2, "newWidth":I
    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    if-eq v2, v3, :cond_25

    .line 3288
    iput v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    .line 3289
    const/4 v0, 0x1

    return v0

    .line 3292
    :cond_25
    return v0
.end method

.method public blacklist consumeLayoutRequest()Z
    .registers 3

    .line 3306
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 3307
    .local v0, "oldValue":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 3308
    return v0
.end method

.method blacklist createItemGroupViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .registers 12
    .param p1, "viewType"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 3550
    const v0, 0x1090068

    const/4 v1, 0x0

    if-nez p1, :cond_56

    .line 3551
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090069

    invoke-virtual {v2, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    .line 3553
    .local v4, "parentGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 3555
    .local v2, "row1":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3557
    .local v0, "row2":Landroid/view/ViewGroup;
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3558
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3560
    new-instance v3, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/view/ViewGroup;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    aput-object v0, v5, v1

    .line 3561
    invoke-static {v5}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v6

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3562
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    move v7, p1

    .end local p1    # "viewType":I
    .local v7, "viewType":I
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;-><init>(Landroid/view/ViewGroup;Ljava/util/List;IILjava/util/function/Supplier;)V

    iput-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    .line 3563
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 3565
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    return-object p1

    .line 3567
    .end local v0    # "row2":Landroid/view/ViewGroup;
    .end local v2    # "row1":Landroid/view/ViewGroup;
    .end local v4    # "parentGroup":Landroid/view/ViewGroup;
    .end local v7    # "viewType":I
    .restart local p1    # "viewType":I
    :cond_56
    move v7, p1

    .end local p1    # "viewType":I
    .restart local v7    # "viewType":I
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 3569
    .local p1, "row":Landroid/view/ViewGroup;
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    invoke-direct {v0, p1, v1, v7}, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;-><init>(Landroid/view/ViewGroup;II)V

    .line 3571
    .local v0, "holder":Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 3573
    return-object v0
.end method

.method public blacklist getAzLabelRowCount()I
    .registers 2

    .line 3371
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mShowAzLabelIfPoss:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist getCallerAndRankedTargetRowCount()I
    .registers 3

    .line 3358
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3359
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3360
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 3358
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public blacklist getFooterRowCount()I
    .registers 2

    .line 3354
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getItemCount()I
    .registers 3

    .line 3376
    nop

    .line 3377
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    .line 3378
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3379
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3380
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3381
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3382
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3383
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getFooterRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3376
    return v0
.end method

.method public blacklist getItemViewType(I)I
    .registers 6
    .param p1, "position"    # I

    .line 3451
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    move v1, v0

    .line 3452
    .local v0, "countSum":I
    .local v1, "count":I
    if-lez v1, :cond_b

    if-ge p1, v0, :cond_b

    const/4 v2, 0x2

    return v2

    .line 3454
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 3455
    if-lez v1, :cond_17

    if-ge p1, v0, :cond_17

    const/4 v2, 0x3

    return v2

    .line 3457
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 3458
    if-lez v1, :cond_23

    if-ge p1, v0, :cond_23

    const/4 v2, 0x0

    return v2

    .line 3460
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 3461
    if-lez v1, :cond_2f

    if-ge p1, v0, :cond_2f

    const/4 v2, 0x5

    return v2

    .line 3463
    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 3464
    if-lez v1, :cond_3b

    if-ge p1, v0, :cond_3b

    const/4 v2, 0x4

    return v2

    .line 3466
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_45

    const/4 v2, 0x6

    return v2

    .line 3468
    :cond_45
    return v3
.end method

.method public blacklist getListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 2

    .line 3725
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    return-object v0
.end method

.method blacklist getListPosition(I)I
    .registers 7
    .param p1, "position"    # I

    .line 3684
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 3686
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    .line 3687
    .local v0, "serviceCount":I
    int-to-float v1, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getMaxRankedTargets()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 3688
    .local v1, "serviceRows":I
    if-ge p1, v1, :cond_29

    .line 3689
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    mul-int/2addr v2, p1

    return v2

    .line 3692
    :cond_29
    sub-int/2addr p1, v1

    .line 3694
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3695
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 3696
    .local v2, "callerAndRankedCount":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v3

    .line 3697
    .local v3, "callerAndRankedRows":I
    if-ge p1, v3, :cond_46

    .line 3698
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v4

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    return v4

    .line 3701
    :cond_46
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr p1, v4

    .line 3703
    add-int v4, v2, v0

    add-int/2addr v4, p1

    return v4
.end method

.method public blacklist getProfileRowCount()I
    .registers 3

    .line 3347
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3348
    return v1

    .line 3350
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method public blacklist getRowCount()I
    .registers 5

    .line 3312
    nop

    .line 3313
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    .line 3314
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3315
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3316
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3317
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3319
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 3318
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 3312
    return v0
.end method

.method blacklist getRowType(I)I
    .registers 5
    .param p1, "rowPosition"    # I

    .line 3585
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    .line 3586
    .local v0, "positionType":I
    const/4 v1, 0x2

    if-nez v0, :cond_a

    .line 3587
    return v1

    .line 3592
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v2

    if-lez v2, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    .line 3593
    return v1

    .line 3596
    :cond_14
    return v0
.end method

.method public blacklist getServiceTargetRowCount()I
    .registers 2

    .line 3366
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowServiceTargets()Z

    move-result v0

    return v0
.end method

.method public blacklist getSystemRowCount()I
    .registers 3

    .line 3331
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3332
    return v1

    .line 3335
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowContentPreview()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3336
    return v1

    .line 3339
    :cond_13
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_20

    goto :goto_22

    .line 3343
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 3340
    :cond_22
    :goto_22
    return v1
.end method

.method public blacklist getTargetType(I)I
    .registers 4
    .param p1, "position"    # I

    .line 3472
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    return v0
.end method

.method public blacklist handleScroll(Landroid/view/View;II)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "y"    # I
    .param p3, "oldy"    # I

    .line 3707
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->canExpandDirectShare()Z

    move-result v0

    .line 3708
    .local v0, "canExpandDirectShare":Z
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 3709
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3710
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    .line 3709
    invoke-virtual {v1, v2, p2, p3, v3}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->handleScroll(Lcom/android/internal/widget/RecyclerView;III)V

    .line 3713
    :cond_1d
    return-void
.end method

.method public blacklist hideContentPreview()V
    .registers 2

    .line 3301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 3302
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    .line 3303
    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 3415
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->notifySingleItemChangeOnIconLoad()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3416
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mBoundViewHolders:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3418
    :cond_e
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->getViewType()I

    move-result v0

    .line 3419
    .local v0, "viewType":I
    sparse-switch v0, :sswitch_data_28

    goto :goto_27

    .line 3425
    :sswitch_19
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$ItemViewHolder;)V

    .line 3426
    goto :goto_27

    .line 3422
    :sswitch_20
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->bindItemGroupViewHolder(ILcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)V

    .line 3423
    nop

    .line 3429
    :goto_27
    return-void

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_20
        0x1 -> :sswitch_19
        0x5 -> :sswitch_20
    .end sparse-switch
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 3389
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_5a

    .line 3409
    const/4 v0, 0x0

    return-object v0

    .line 3403
    :pswitch_6
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 3404
    .local v0, "sp":Landroid/widget/Space;
    new-instance v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3406
    new-instance v1, Lcom/android/internal/app/ChooserActivity$FooterViewHolder;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/app/ChooserActivity$FooterViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1

    .line 3395
    .end local v0    # "sp":Landroid/widget/Space;
    :pswitch_20
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 3393
    :pswitch_2c
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 3391
    :pswitch_38
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/ChooserActivity;->createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 3397
    :pswitch_46
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 3398
    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    .line 3397
    return-object v0

    .line 3401
    :pswitch_55
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createItemGroupViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    move-result-object v0

    return-object v0

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_55
        :pswitch_46
        :pswitch_38
        :pswitch_2c
        :pswitch_20
        :pswitch_55
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3441
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->notifySingleItemChangeOnIconLoad()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3442
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mBoundViewHolders:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3444
    :cond_e
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public blacklist onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3433
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->notifySingleItemChangeOnIconLoad()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3434
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mBoundViewHolders:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3436
    :cond_e
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3437
    return-void
.end method

.method public blacklist setFooterHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 3268
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    .line 3269
    return-void
.end method

.method blacklist shouldCellSpan(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 3729
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method blacklist updateDirectShareExpansion()V
    .registers 3

    .line 3733
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->canExpandDirectShare()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_29

    .line 3736
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3737
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 3738
    .local v0, "activeAdapterView":Lcom/android/internal/widget/RecyclerView;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3739
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->collapse(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_28

    .line 3741
    :cond_23
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->expand(Lcom/android/internal/widget/RecyclerView;)V

    .line 3743
    :goto_28
    return-void

    .line 3734
    .end local v0    # "activeAdapterView":Lcom/android/internal/widget/RecyclerView;
    :cond_29
    :goto_29
    return-void
.end method
