.class public Lcom/android/internal/widget/BackgroundFallback;
.super Ljava/lang/Object;
.source "BackgroundFallback.java"


# instance fields
.field private mBackgroundFallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public draw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 14
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "c"    # Landroid/graphics/Canvas;
    .param p3, "content"    # Landroid/view/View;

    #@0
    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    #@3
    move-result v11

    #@4
    if-nez v11, :cond_0

    #@6
    .line 44
    return-void

    #@7
    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@a
    move-result v10

    #@b
    .line 49
    .local v10, "width":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    #@e
    move-result v5

    #@f
    .line 50
    .local v5, "height":I
    move v7, v10

    #@10
    .line 51
    .local v7, "left":I
    move v9, v5

    #@11
    .line 52
    .local v9, "top":I
    const/4 v8, 0x0

    #@12
    .line 53
    .local v8, "right":I
    const/4 v1, 0x0

    #@13
    .line 55
    .local v1, "bottom":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@16
    move-result v4

    #@17
    .line 56
    .local v4, "childCount":I
    const/4 v6, 0x0

    #@18
    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_4

    #@1a
    .line 57
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v2

    #@1e
    .line 58
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object v3

    #@22
    .line 59
    .local v3, "childBg":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p3

    #@24
    if-ne v2, v0, :cond_2

    #@26
    .line 62
    if-nez v3, :cond_3

    #@28
    instance-of v11, v2, Landroid/view/ViewGroup;

    #@2a
    if-eqz v11, :cond_3

    #@2c
    move-object v11, v2

    #@2d
    .line 63
    check-cast v11, Landroid/view/ViewGroup;

    #@2f
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    #@32
    move-result v11

    #@33
    if-nez v11, :cond_3

    #@35
    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@37
    goto :goto_0

    #@38
    .line 66
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@3b
    move-result v11

    #@3c
    if-nez v11, :cond_1

    #@3e
    if-eqz v3, :cond_1

    #@40
    .line 67
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@43
    move-result v11

    #@44
    const/4 v12, -0x1

    #@45
    if-ne v11, v12, :cond_1

    #@47
    .line 73
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@4a
    move-result v11

    #@4b
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    #@4e
    move-result v7

    #@4f
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@52
    move-result v11

    #@53
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    #@56
    move-result v9

    #@57
    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@5a
    move-result v11

    #@5b
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    #@5e
    move-result v8

    #@5f
    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@62
    move-result v11

    #@63
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    #@66
    move-result v1

    #@67
    goto :goto_1

    #@68
    .line 79
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childBg":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-ge v7, v8, :cond_5

    #@6a
    if-lt v9, v1, :cond_6

    #@6c
    .line 81
    :cond_5
    return-void

    #@6d
    .line 84
    :cond_6
    if-lez v9, :cond_7

    #@6f
    .line 85
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    #@71
    const/4 v12, 0x0

    #@72
    const/4 v13, 0x0

    #@73
    invoke-virtual {v11, v12, v13, v10, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@76
    .line 86
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    #@78
    move-object/from16 v0, p2

    #@7a
    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@7d
    .line 88
    :cond_7
    if-lez v7, :cond_8

    #@7f
    .line 89
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    #@81
    const/4 v12, 0x0

    #@82
    invoke-virtual {v11, v12, v9, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@85
    .line 90
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@8c
    .line 92
    :cond_8
    if-ge v8, v10, :cond_9

    #@8e
    .line 93
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    #@90
    invoke-virtual {v11, v8, v9, v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@93
    .line 94
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    #@95
    move-object/from16 v0, p2

    #@97
    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@9a
    .line 96
    :cond_9
    if-ge v1, v5, :cond_a

    #@9c
    .line 97
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    #@9e
    invoke-virtual {v11, v7, v1, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@a1
    .line 98
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    #@a3
    move-object/from16 v0, p2

    #@a5
    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@a8
    .line 42
    :cond_a
    return-void
.end method

.method public hasFallback()Z
    .locals 1

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    #@2
    .line 34
    return-void
.end method
