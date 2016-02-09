.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarOverflowPanel"
.end annotation


# instance fields
.field private final mBackButton:Landroid/view/View;

.field private final mBackButtonContainer:Landroid/view/ViewGroup;

.field private final mCloseOverflow:Ljava/lang/Runnable;

.field private final mContentView:Landroid/widget/LinearLayout;

.field private final mListView:Landroid/widget/ListView;

.field private final mListViewItemWidthCalculator:Landroid/widget/TextView;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mOverflowWidth:I

.field private mSuggestedHeight:I

.field private final mViewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mCloseOverflow:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Landroid/widget/ListView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I

    #@2
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "closeOverflow"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1172
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Runnable;

    #@b
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mCloseOverflow:Ljava/lang/Runnable;

    #@d
    .line 1174
    new-instance v0, Landroid/widget/LinearLayout;

    #@f
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@14
    .line 1175
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@16
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@1a
    .line 1176
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    #@1c
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@1e
    invoke-direct {v0, v1, v3}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$ViewFader;)V

    #@21
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mViewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    #@23
    .line 1178
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@26
    move-result-object v0

    #@27
    .line 1179
    const v1, 0x1090058

    #@2a
    .line 1178
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButton:Landroid/view/View;

    #@30
    .line 1180
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButton:Landroid/view/View;

    #@32
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$1;

    #@34
    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)V

    #@37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@3a
    .line 1186
    new-instance v0, Landroid/widget/LinearLayout;

    #@3c
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@3f
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButtonContainer:Landroid/view/ViewGroup;

    #@41
    .line 1187
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButtonContainer:Landroid/view/ViewGroup;

    #@43
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButton:Landroid/view/View;

    #@45
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@48
    .line 1189
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->createOverflowListView()Landroid/widget/ListView;

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    #@4e
    .line 1190
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    #@50
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;

    #@52
    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)V

    #@55
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@58
    .line 1200
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@5a
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    #@5c
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@5f
    .line 1201
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@61
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButtonContainer:Landroid/view/ViewGroup;

    #@63
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@66
    .line 1203
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap5(Landroid/content/Context;)Landroid/widget/TextView;

    #@69
    move-result-object v0

    #@6a
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListViewItemWidthCalculator:Landroid/widget/TextView;

    #@6c
    .line 1204
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListViewItemWidthCalculator:Landroid/widget/TextView;

    #@6e
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@70
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@76
    .line 1171
    return-void
.end method

.method private createOverflowListView()Landroid/widget/ListView;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    .line 1310
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@4
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    .line 1311
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/ListView;

    #@a
    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    #@d
    .line 1312
    .local v2, "overflowListView":Landroid/widget/ListView;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    #@f
    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@12
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@15
    .line 1314
    const/4 v6, 0x0

    #@16
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    #@19
    .line 1315
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setDividerHeight(I)V

    #@1c
    .line 1317
    const/4 v5, 0x2

    #@1d
    .line 1318
    .local v5, "viewTypeCount":I
    const/4 v4, 0x0

    #@1e
    .line 1319
    .local v4, "stringLabelViewType":I
    const/4 v1, 0x1

    #@1f
    .line 1321
    .local v1, "iconOnlyViewType":I
    new-instance v3, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;

    #@21
    invoke-direct {v3, p0, v0, v8, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;Landroid/content/Context;ILandroid/content/Context;)V

    #@24
    .line 1373
    .local v3, "overflowListViewAdapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@27
    .line 1374
    return-object v2
.end method

.method private setListViewHeight()V
    .locals 8

    #@0
    .prologue
    .line 1274
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v6

    #@6
    invoke-static {v6}, Lcom/android/internal/widget/FloatingToolbar;->-wrap8(Landroid/content/Context;)I

    #@9
    move-result v1

    #@a
    .line 1275
    .local v1, "itemHeight":I
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    #@c
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@f
    move-result-object v6

    #@10
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    #@13
    move-result v6

    #@14
    mul-int v0, v6, v1

    #@16
    .line 1276
    .local v0, "height":I
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@18
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v6

    #@20
    .line 1277
    const v7, 0x105009f

    #@23
    .line 1276
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@26
    move-result v2

    #@27
    .line 1278
    .local v2, "maxHeight":I
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@29
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v6

    #@31
    .line 1279
    const v7, 0x105009e

    #@34
    .line 1278
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@37
    move-result v3

    #@38
    .line 1280
    .local v3, "minHeight":I
    iget v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mSuggestedHeight:I

    #@3a
    iget v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mSuggestedHeight:I

    #@3c
    rem-int/2addr v7, v1

    #@3d
    sub-int/2addr v6, v7

    #@3e
    sub-int v5, v6, v1

    #@40
    .line 1282
    .local v5, "suggestedListViewHeight":I
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    #@42
    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@45
    move-result-object v4

    #@46
    .line 1283
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    if-gtz v5, :cond_0

    #@48
    .line 1285
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@4b
    move-result v6

    #@4c
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@4e
    .line 1293
    :goto_0
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    #@50
    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@53
    .line 1273
    return-void

    #@54
    .line 1286
    :cond_0
    if-ge v5, v3, :cond_1

    #@56
    .line 1288
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@58
    goto :goto_0

    #@59
    .line 1291
    :cond_1
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    #@5c
    move-result v6

    #@5d
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    #@60
    move-result v6

    #@61
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@63
    goto :goto_0
.end method

.method private setOverflowWidth()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1297
    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I

    #@3
    .line 1298
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    #@6
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    #@d
    move-result v2

    #@e
    if-ge v0, v2, :cond_0

    #@10
    .line 1299
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    #@12
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/view/MenuItem;

    #@1c
    .line 1300
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 1301
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListViewItemWidthCalculator:Landroid/widget/TextView;

    #@21
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@28
    .line 1302
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListViewItemWidthCalculator:Landroid/widget/TextView;

    #@2a
    invoke-virtual {v2, v4, v4}, Landroid/widget/TextView;->measure(II)V

    #@2d
    .line 1305
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListViewItemWidthCalculator:Landroid/widget/TextView;

    #@2f
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@32
    move-result v2

    #@33
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I

    #@35
    .line 1304
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@38
    move-result v2

    #@39
    iput v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I

    #@3b
    .line 1298
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1296
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 1
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mViewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeIn(Z)V

    #@5
    .line 1253
    return-void
.end method

.method public fadeOut(Z)V
    .locals 1
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mViewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeOut(Z)V

    #@5
    .line 1257
    return-void
.end method

.method public getMinimumHeight()I
    .locals 2

    #@0
    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    .line 1242
    const v1, 0x105009e

    #@d
    .line 1241
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@10
    move-result v0

    #@11
    .line 1243
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@13
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap8(Landroid/content/Context;)I

    #@1a
    move-result v1

    #@1b
    .line 1241
    add-int/2addr v0, v1

    #@1c
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@2
    return-object v0
.end method

.method public measure()Landroid/util/Size;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1268
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@d
    .line 1269
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@f
    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    #@12
    .line 1270
    new-instance v0, Landroid/util/Size;

    #@14
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@16
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    #@19
    move-result v1

    #@1a
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@1c
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    #@1f
    move-result v2

    #@20
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@23
    return-object v0

    #@24
    :cond_0
    move v0, v1

    #@25
    .line 1268
    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1212
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    #@2
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/ArrayAdapter;

    #@8
    .line 1213
    .local v0, "overflowListViewAdapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    #@b
    .line 1214
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    #@e
    .line 1215
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setListViewHeight()V

    #@11
    .line 1216
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setOverflowWidth()V

    #@14
    .line 1211
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    #@0
    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    .line 1219
    return-void
.end method

.method public setOverflowDirection(I)V
    .locals 3
    .param p1, "overflowDirection"    # I

    #@0
    .prologue
    .line 1230
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@2
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButtonContainer:Landroid/view/ViewGroup;

    #@4
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    #@7
    .line 1231
    if-nez p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 1232
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    #@c
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButtonContainer:Landroid/view/ViewGroup;

    #@e
    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    #@11
    .line 1229
    return-void

    #@12
    .line 1231
    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    #@13
    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public setSuggestedHeight(I)V
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 1236
    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mSuggestedHeight:I

    #@2
    .line 1237
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setListViewHeight()V

    #@5
    .line 1235
    return-void
.end method
