.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarMainPanel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;
    }
.end annotation


# instance fields
.field private final mContentView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOpenOverflow:Ljava/lang/Runnable;

.field private mOpenOverflowButton:Landroid/view/View;

.field private final viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openOverflow"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1010
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    #@8
    .line 1009
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    #@a
    .line 1033
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/content/Context;

    #@10
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    #@12
    .line 1034
    new-instance v0, Landroid/widget/LinearLayout;

    #@14
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@17
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    #@19
    .line 1035
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    #@1b
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$ViewFader;)V

    #@21
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    #@23
    .line 1036
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/lang/Runnable;

    #@29
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    #@2b
    .line 1032
    return-void
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1138
    move-object v0, p1

    #@1
    .line 1139
    .local v0, "button":Landroid/view/View;
    invoke-static {p2}, Lcom/android/internal/widget/FloatingToolbar;->-wrap6(Landroid/view/MenuItem;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1140
    const v1, 0x1020054

    #@a
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 1142
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@11
    .line 1143
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    #@13
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@16
    .line 1137
    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 1
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeIn(Z)V

    #@5
    .line 1118
    return-void
.end method

.method public fadeOut(Z)V
    .locals 1
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeOut(Z)V

    #@5
    .line 1122
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;I)Ljava/util/List;
    .locals 14
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1046
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1049
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    #@5
    invoke-static {v8}, Lcom/android/internal/widget/FloatingToolbar;->-wrap7(Landroid/content/Context;)I

    #@8
    move-result v8

    #@9
    sub-int v7, p2, v8

    #@b
    .line 1051
    .local v7, "toolbarWidth":I
    move v0, v7

    #@c
    .line 1052
    .local v0, "availableWidth":I
    new-instance v6, Ljava/util/LinkedList;

    #@e
    invoke-direct {v6, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #@11
    .line 1054
    .local v6, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    #@13
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    #@16
    .line 1056
    const/4 v1, 0x1

    #@17
    .line 1057
    .local v1, "isFirstItem":Z
    :goto_0
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    #@1a
    move-result v8

    #@1b
    if-nez v8, :cond_4

    #@1d
    .line 1058
    invoke-virtual {v6}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/view/MenuItem;

    #@23
    .line 1059
    .local v2, "menuItem":Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    #@25
    invoke-static {v8, v2}, Lcom/android/internal/widget/FloatingToolbar;->-wrap3(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    #@28
    move-result-object v3

    #@29
    .line 1062
    .local v3, "menuItemButton":Landroid/view/View;
    if-eqz v1, :cond_0

    #@2b
    .line 1064
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    #@2e
    move-result v8

    #@2f
    int-to-double v8, v8

    #@30
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    #@32
    mul-double/2addr v8, v10

    #@33
    double-to-int v8, v8

    #@34
    .line 1065
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    #@37
    move-result v9

    #@38
    .line 1066
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    #@3b
    move-result v10

    #@3c
    .line 1067
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    #@3f
    move-result v11

    #@40
    .line 1063
    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    #@43
    .line 1068
    const/4 v1, 0x0

    #@44
    .line 1072
    :cond_0
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    #@47
    move-result v8

    #@48
    const/4 v9, 0x1

    #@49
    if-ne v8, v9, :cond_1

    #@4b
    .line 1074
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    #@4e
    move-result v8

    #@4f
    .line 1075
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    #@52
    move-result v9

    #@53
    .line 1076
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    #@56
    move-result v10

    #@57
    int-to-double v10, v10

    #@58
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    #@5a
    mul-double/2addr v10, v12

    #@5b
    double-to-int v10, v10

    #@5c
    .line 1077
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    #@5f
    move-result v11

    #@60
    .line 1073
    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    #@63
    .line 1080
    :cond_1
    const/4 v8, 0x0

    #@64
    const/4 v9, 0x0

    #@65
    invoke-virtual {v3, v8, v9}, Landroid/view/View;->measure(II)V

    #@68
    .line 1081
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@6b
    move-result v8

    #@6c
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    #@6f
    move-result v4

    #@70
    .line 1082
    .local v4, "menuItemButtonWidth":I
    if-gt v4, v0, :cond_2

    #@72
    .line 1083
    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    #@75
    .line 1084
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    #@77
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@7a
    .line 1085
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7d
    move-result-object v5

    #@7e
    .line 1086
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@80
    .line 1087
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@83
    .line 1088
    sub-int/2addr v0, v4

    #@84
    .line 1089
    invoke-virtual {v6}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    #@87
    goto :goto_0

    #@88
    .line 1091
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    #@8a
    if-nez v8, :cond_3

    #@8c
    .line 1092
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    #@8e
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@91
    move-result-object v8

    #@92
    .line 1093
    const v9, 0x109005c

    #@95
    const/4 v10, 0x0

    #@96
    .line 1092
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@99
    move-result-object v8

    #@9a
    iput-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    #@9c
    .line 1094
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    #@9e
    new-instance v9, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;

    #@a0
    invoke-direct {v9, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    #@a3
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@a6
    .line 1103
    :cond_3
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    #@a8
    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    #@aa
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@ad
    .line 1107
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "menuItemButton":Landroid/view/View;
    .end local v4    # "menuItemButtonWidth":I
    :cond_4
    return-object v6
.end method

.method public measure()Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1132
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    #@3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

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
    .line 1133
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    #@f
    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    #@12
    .line 1134
    new-instance v0, Landroid/util/Size;

    #@14
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    #@16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    #@19
    move-result v1

    #@1a
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    #@1c
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

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
    .line 1132
    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    #@0
    .prologue
    .line 1111
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    .line 1110
    return-void
.end method
