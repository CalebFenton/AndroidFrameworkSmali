.class public Lcom/android/server/policy/RecentApplicationsBackground;
.super Landroid/widget/LinearLayout;
.source "RecentApplicationsBackground.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentApplicationsBackground"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mTmp0:Landroid/graphics/Rect;

.field private mTmp1:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 43
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/RecentApplicationsBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 44
    invoke-direct {p0}, Lcom/android/server/policy/RecentApplicationsBackground;->init()V

    #@7
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 39
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mTmp0:Landroid/graphics/Rect;

    #@a
    .line 40
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mTmp1:Landroid/graphics/Rect;

    #@11
    .line 49
    invoke-direct {p0}, Lcom/android/server/policy/RecentApplicationsBackground;->init()V

    #@14
    .line 47
    return-void
.end method

.method private getChildBounds(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const v4, 0x7fffffff

    #@3
    const/high16 v3, -0x80000000

    #@5
    .line 144
    iput v4, p1, Landroid/graphics/Rect;->top:I

    #@7
    iput v4, p1, Landroid/graphics/Rect;->left:I

    #@9
    .line 145
    iput v3, p1, Landroid/graphics/Rect;->right:I

    #@b
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    #@d
    .line 146
    invoke-virtual {p0}, Lcom/android/server/policy/RecentApplicationsBackground;->getChildCount()I

    #@10
    move-result v0

    #@11
    .line 147
    .local v0, "N":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@14
    .line 148
    invoke-virtual {p0, v1}, Lcom/android/server/policy/RecentApplicationsBackground;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v2

    #@18
    .line 149
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 150
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@20
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@23
    move-result v4

    #@24
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@27
    move-result v3

    #@28
    iput v3, p1, Landroid/graphics/Rect;->left:I

    #@2a
    .line 151
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@2c
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@2f
    move-result v4

    #@30
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@33
    move-result v3

    #@34
    iput v3, p1, Landroid/graphics/Rect;->top:I

    #@36
    .line 152
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@38
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@3b
    move-result v4

    #@3c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v3

    #@40
    iput v3, p1, Landroid/graphics/Rect;->right:I

    #@42
    .line 153
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@44
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@47
    move-result v4

    #@48
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@4b
    move-result v3

    #@4c
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    #@4e
    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@50
    goto :goto_0

    #@51
    .line 143
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private init()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 53
    invoke-virtual {p0}, Lcom/android/server/policy/RecentApplicationsBackground;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    #@7
    .line 54
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/policy/RecentApplicationsBackground;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 55
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/server/policy/RecentApplicationsBackground;->setPadding(IIII)V

    #@e
    .line 56
    const/16 v0, 0x11

    #@10
    invoke-virtual {p0, v0}, Lcom/android/server/policy/RecentApplicationsBackground;->setGravity(I)V

    #@13
    .line 52
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 90
    iget-object v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    #@3
    .line 91
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@5
    .line 92
    iget-boolean v7, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackgroundSizeChanged:Z

    #@7
    if-eqz v7, :cond_0

    #@9
    .line 93
    iput-boolean v9, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackgroundSizeChanged:Z

    #@b
    .line 94
    iget-object v3, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mTmp0:Landroid/graphics/Rect;

    #@d
    .line 95
    .local v3, "chld":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mTmp1:Landroid/graphics/Rect;

    #@f
    .line 96
    .local v1, "bkg":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@14
    .line 97
    invoke-direct {p0, v3}, Lcom/android/server/policy/RecentApplicationsBackground;->getChildBounds(Landroid/graphics/Rect;)V

    #@17
    .line 100
    iget v7, v3, Landroid/graphics/Rect;->top:I

    #@19
    iget v8, v1, Landroid/graphics/Rect;->top:I

    #@1b
    sub-int v6, v7, v8

    #@1d
    .line 101
    .local v6, "top":I
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    #@1f
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    #@21
    add-int v2, v7, v8

    #@23
    .line 112
    .local v2, "bottom":I
    const/4 v4, 0x0

    #@24
    .line 113
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/android/server/policy/RecentApplicationsBackground;->getRight()I

    #@27
    move-result v5

    #@28
    .line 115
    .local v5, "right":I
    invoke-virtual {v0, v4, v6, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2b
    .line 118
    .end local v1    # "bkg":Landroid/graphics/Rect;
    .end local v2    # "bottom":I
    .end local v3    # "chld":Landroid/graphics/Rect;
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2d
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@30
    .line 125
    const/16 v7, 0xbf

    #@32
    invoke-virtual {p1, v7, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    #@35
    .line 127
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    #@38
    .line 89
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2
    .line 82
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 83
    invoke-virtual {p0}, Lcom/android/server/policy/RecentApplicationsBackground;->getDrawableState()[I

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@11
    .line 85
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    #@14
    .line 80
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    #@3
    .line 76
    iget-object v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 74
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    #@3
    .line 133
    iget-object v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@8
    .line 134
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/policy/RecentApplicationsBackground;->setWillNotDraw(Z)V

    #@c
    .line 131
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    #@3
    .line 140
    iget-object v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@9
    .line 138
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/policy/RecentApplicationsBackground;->setWillNotDraw(Z)V

    #@4
    .line 62
    iget v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mLeft:I

    #@6
    if-ne v0, p1, :cond_0

    #@8
    iget v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mRight:I

    #@a
    if-eq v0, p3, :cond_2

    #@c
    .line 63
    :cond_0
    :goto_0
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackgroundSizeChanged:Z

    #@f
    .line 65
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setFrame(IIII)Z

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 62
    :cond_2
    iget v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mTop:I

    #@16
    if-ne v0, p2, :cond_0

    #@18
    iget v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBottom:I

    #@1a
    if-eq v0, p4, :cond_1

    #@1c
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/policy/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method
