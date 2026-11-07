.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final greylist-max-o mContentView:Landroid/view/View;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final greylist-max-o mMessageView:Landroid/widget/TextView;

.field private final greylist-max-o mTmpAnchorPos:[I

.field private final greylist-max-o mTmpAppPos:[I

.field private final greylist-max-o mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 40
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    .line 41
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    .line 44
    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090173

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 52
    const v2, 0x1040a4d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3ed

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 55
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 57
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 58
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 59
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    return-void
.end method

.method private greylist-max-o computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .registers 19
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "outParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 96
    move-object/from16 v0, p5

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 98
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10503ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 102
    .local v1, "tooltipPreciseAnchorThreshold":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lt v2, v1, :cond_1d

    .line 104
    move v2, p2

    .local v2, "offsetX":I
    goto :goto_23

    .line 107
    .end local v2    # "offsetX":I
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 112
    .restart local v2    # "offsetX":I
    :goto_23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lt v3, v1, :cond_3b

    .line 114
    iget-object v3, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10503ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 116
    .local v3, "offsetExtra":I
    add-int v4, p3, v3

    .line 117
    .local v4, "offsetBelow":I
    sub-int v3, p3, v3

    .line 118
    .local v3, "offsetAbove":I
    goto :goto_40

    .line 120
    .end local v3    # "offsetAbove":I
    .end local v4    # "offsetBelow":I
    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 121
    .restart local v4    # "offsetBelow":I
    const/4 v3, 0x0

    .line 124
    .restart local v3    # "offsetAbove":I
    :goto_40
    const/16 v5, 0x31

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 126
    iget-object v5, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 127
    if-eqz p4, :cond_50

    const v6, 0x10503b1

    goto :goto_53

    .line 128
    :cond_50
    const v6, 0x10503b0

    .line 126
    :goto_53
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 131
    .local v5, "tooltipOffset":I
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v6

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    .line 131
    invoke-virtual {v6, v7}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v6

    .line 133
    .local v6, "appView":Landroid/view/View;
    if-nez v6, :cond_6d

    .line 134
    const-string v7, "TooltipPopup"

    const-string v8, "Cannot find app view"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 137
    :cond_6d
    iget-object v7, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 138
    iget-object v7, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 140
    iget-object v7, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 141
    iget-object v7, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v8, 0x0

    aget v9, v7, v8

    iget-object v10, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v10, v10, v8

    sub-int/2addr v9, v10

    aput v9, v7, v8

    .line 142
    iget-object v7, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v9, 0x1

    aget v10, v7, v9

    iget-object v11, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v11, v11, v9

    sub-int/2addr v10, v11

    aput v10, v7, v9

    .line 145
    iget-object v7, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v7, v7, v8

    add-int/2addr v7, v2

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 147
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 148
    .local v7, "spec":I
    iget-object v8, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v8, v7, v7}, Landroid/view/View;->measure(II)V

    .line 149
    iget-object v8, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 151
    .local v8, "tooltipHeight":I
    iget-object v10, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v10, v10, v9

    add-int/2addr v10, v3

    sub-int/2addr v10, v5

    sub-int/2addr v10, v8

    .line 152
    .local v10, "yAbove":I
    iget-object v11, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v9, v11, v9

    add-int/2addr v9, v4

    add-int/2addr v9, v5

    .line 153
    .local v9, "yBelow":I
    if-eqz p4, :cond_c8

    .line 154
    if-ltz v10, :cond_c5

    .line 155
    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_d7

    .line 157
    :cond_c5
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_d7

    .line 163
    :cond_c8
    add-int v11, v9, v8

    iget-object v12, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-gt v11, v12, :cond_d5

    .line 164
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_d7

    .line 166
    :cond_d5
    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 169
    :goto_d7
    return-void
.end method


# virtual methods
.method public greylist-max-o getContentView()Landroid/view/View;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public greylist-max-o hide()V
    .registers 3

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 79
    return-void

    .line 82
    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 83
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public greylist-max-o isShowing()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .registers 13
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "tooltipText"    # Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    .line 69
    :cond_9
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v6, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "anchorView":Landroid/view/View;
    .end local p2    # "anchorX":I
    .end local p3    # "anchorY":I
    .end local p4    # "fromTouch":Z
    .local v2, "anchorView":Landroid/view/View;
    .local v3, "anchorX":I
    .local v4, "anchorY":I
    .local v5, "fromTouch":Z
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    .line 73
    iget-object p1, v1, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 74
    .local p1, "wm":Landroid/view/WindowManager;
    iget-object p2, v1, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p3, v1, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method
