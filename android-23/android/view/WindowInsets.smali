.class public final Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# static fields
.field public static final CONSUMED:Landroid/view/WindowInsets;

.field private static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mIsRound:Z

.field private mStableInsets:Landroid/graphics/Rect;

.field private mStableInsetsConsumed:Z

.field private mSystemWindowInsets:Landroid/graphics/Rect;

.field private mSystemWindowInsetsConsumed:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindowDecorInsets:Landroid/graphics/Rect;

.field private mWindowDecorInsetsConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 44
    new-instance v0, Landroid/graphics/Rect;

    #@4
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@7
    sput-object v0, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    #@9
    .line 55
    new-instance v0, Landroid/view/WindowInsets;

    #@b
    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@e
    sput-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    #@10
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 90
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, p1, v1, v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@5
    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;
    .param p2, "windowDecorInsets"    # Landroid/graphics/Rect;
    .param p3, "stableInsets"    # Landroid/graphics/Rect;
    .param p4, "isRound"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 40
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@7
    .line 41
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@9
    .line 42
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@b
    .line 61
    if-nez p1, :cond_3

    #@d
    move v0, v1

    #@e
    :goto_0
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@10
    .line 62
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@12
    if-eqz v0, :cond_0

    #@14
    sget-object p1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    #@16
    .end local p1    # "systemWindowInsets":Landroid/graphics/Rect;
    :cond_0
    iput-object p1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@18
    .line 64
    if-nez p2, :cond_4

    #@1a
    move v0, v1

    #@1b
    :goto_1
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@1d
    .line 65
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@1f
    if-eqz v0, :cond_1

    #@21
    sget-object p2, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    #@23
    .end local p2    # "windowDecorInsets":Landroid/graphics/Rect;
    :cond_1
    iput-object p2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@25
    .line 67
    if-nez p3, :cond_5

    #@27
    :goto_2
    iput-boolean v1, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@29
    .line 68
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@2b
    if-eqz v0, :cond_2

    #@2d
    sget-object p3, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    #@2f
    .end local p3    # "stableInsets":Landroid/graphics/Rect;
    :cond_2
    iput-object p3, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@31
    .line 70
    iput-boolean p4, p0, Landroid/view/WindowInsets;->mIsRound:Z

    #@33
    .line 60
    return-void

    #@34
    .restart local p1    # "systemWindowInsets":Landroid/graphics/Rect;
    .restart local p2    # "windowDecorInsets":Landroid/graphics/Rect;
    .restart local p3    # "stableInsets":Landroid/graphics/Rect;
    :cond_3
    move v0, v2

    #@35
    .line 61
    goto :goto_0

    #@36
    .end local p1    # "systemWindowInsets":Landroid/graphics/Rect;
    :cond_4
    move v0, v2

    #@37
    .line 64
    goto :goto_1

    #@38
    .end local p2    # "windowDecorInsets":Landroid/graphics/Rect;
    :cond_5
    move v1, v2

    #@39
    .line 67
    goto :goto_2
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1
    .param p1, "src"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 40
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@6
    .line 41
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@8
    .line 42
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@a
    .line 79
    iget-object v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@c
    iput-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@e
    .line 80
    iget-object v0, p1, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@10
    iput-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@12
    .line 81
    iget-object v0, p1, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@14
    iput-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@16
    .line 82
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@18
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@1a
    .line 83
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@1c
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@1e
    .line 84
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@20
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@22
    .line 85
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mIsRound:Z

    #@24
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    #@26
    .line 78
    return-void
.end method


# virtual methods
.method public consumeStableInsets()Landroid/view/WindowInsets;
    .locals 2

    #@0
    .prologue
    .line 472
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@5
    .line 473
    .local v0, "result":Landroid/view/WindowInsets;
    sget-object v1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    #@7
    iput-object v1, v0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@9
    .line 474
    const/4 v1, 0x1

    #@a
    iput-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@c
    .line 475
    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .locals 2

    #@0
    .prologue
    .line 294
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@5
    .line 295
    .local v0, "result":Landroid/view/WindowInsets;
    sget-object v1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    #@7
    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@9
    .line 296
    const/4 v1, 0x1

    #@a
    iput-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@c
    .line 297
    return-object v0
.end method

.method public consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "left"    # Z
    .param p2, "top"    # Z
    .param p3, "right"    # Z
    .param p4, "bottom"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 312
    if-nez p1, :cond_0

    #@3
    if-nez p2, :cond_0

    #@5
    if-nez p3, :cond_0

    #@7
    if-eqz p4, :cond_5

    #@9
    .line 313
    :cond_0
    new-instance v0, Landroid/view/WindowInsets;

    #@b
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@e
    .line 314
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v5, Landroid/graphics/Rect;

    #@10
    .line 315
    if-eqz p1, :cond_1

    #@12
    move v4, v1

    #@13
    .line 316
    :goto_0
    if-eqz p2, :cond_2

    #@15
    move v3, v1

    #@16
    .line 317
    :goto_1
    if-eqz p3, :cond_3

    #@18
    move v2, v1

    #@19
    .line 318
    :goto_2
    if-eqz p4, :cond_4

    #@1b
    .line 314
    :goto_3
    invoke-direct {v5, v4, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1e
    iput-object v5, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@20
    .line 319
    return-object v0

    #@21
    .line 315
    :cond_1
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@23
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@25
    move v4, v2

    #@26
    goto :goto_0

    #@27
    .line 316
    :cond_2
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@29
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@2b
    move v3, v2

    #@2c
    goto :goto_1

    #@2d
    .line 317
    :cond_3
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@2f
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@31
    goto :goto_2

    #@32
    .line 318
    :cond_4
    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@34
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@36
    goto :goto_3

    #@37
    .line 321
    .end local v0    # "result":Landroid/view/WindowInsets;
    :cond_5
    return-object p0
.end method

.method public consumeWindowDecorInsets()Landroid/view/WindowInsets;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 359
    new-instance v0, Landroid/view/WindowInsets;

    #@3
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@6
    .line 360
    .local v0, "result":Landroid/view/WindowInsets;
    iget-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@b
    .line 361
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@e
    .line 362
    return-object v0
.end method

.method public consumeWindowDecorInsets(ZZZZ)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "left"    # Z
    .param p2, "top"    # Z
    .param p3, "right"    # Z
    .param p4, "bottom"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 370
    if-nez p1, :cond_0

    #@3
    if-nez p2, :cond_0

    #@5
    if-nez p3, :cond_0

    #@7
    if-eqz p4, :cond_5

    #@9
    .line 371
    :cond_0
    new-instance v0, Landroid/view/WindowInsets;

    #@b
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@e
    .line 372
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v5, Landroid/graphics/Rect;

    #@10
    if-eqz p1, :cond_1

    #@12
    move v4, v1

    #@13
    .line 373
    :goto_0
    if-eqz p2, :cond_2

    #@15
    move v3, v1

    #@16
    .line 374
    :goto_1
    if-eqz p3, :cond_3

    #@18
    move v2, v1

    #@19
    .line 375
    :goto_2
    if-eqz p4, :cond_4

    #@1b
    .line 372
    :goto_3
    invoke-direct {v5, v4, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1e
    iput-object v5, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@20
    .line 376
    return-object v0

    #@21
    .line 372
    :cond_1
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@23
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@25
    move v4, v2

    #@26
    goto :goto_0

    #@27
    .line 373
    :cond_2
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@29
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@2b
    move v3, v2

    #@2c
    goto :goto_1

    #@2d
    .line 374
    :cond_3
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@2f
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@31
    goto :goto_2

    #@32
    .line 375
    :cond_4
    iget-object v1, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@34
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@36
    goto :goto_3

    #@37
    .line 378
    .end local v0    # "result":Landroid/view/WindowInsets;
    :cond_5
    return-object p0
.end method

.method public getStableInsetBottom()I
    .locals 1

    #@0
    .prologue
    .line 447
    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4
    return v0
.end method

.method public getStableInsetLeft()I
    .locals 1

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    return v0
.end method

.method public getStableInsetRight()I
    .locals 1

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@4
    return v0
.end method

.method public getStableInsetTop()I
    .locals 1

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@4
    return v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4
    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@4
    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@4
    return v0
.end method

.method public getSystemWindowInsets()Landroid/graphics/Rect;
    .locals 2

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 100
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    #@b
    .line 102
    :cond_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 103
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    #@11
    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@16
    .line 108
    :goto_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    #@18
    return-object v0

    #@19
    .line 106
    :cond_1
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@1e
    goto :goto_0
.end method

.method public getWindowDecorInsetBottom()I
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4
    return v0
.end method

.method public getWindowDecorInsetLeft()I
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    return v0
.end method

.method public getWindowDecorInsetRight()I
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@4
    return v0
.end method

.method public getWindowDecorInsetTop()I
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@4
    return v0
.end method

.method public hasInsets()Z
    .locals 1

    #@0
    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasWindowDecorInsets()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasStableInsets()Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public hasStableInsets()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 462
    iget-object v2, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@4
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@6
    if-nez v2, :cond_0

    #@8
    iget-object v2, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@a
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    iget-object v2, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@11
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@13
    if-nez v2, :cond_0

    #@15
    .line 463
    iget-object v2, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@17
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@19
    if-nez v2, :cond_0

    #@1b
    move v0, v1

    #@1c
    goto :goto_0
.end method

.method public hasSystemWindowInsets()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 229
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@4
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@6
    if-nez v2, :cond_0

    #@8
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 230
    :cond_1
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@11
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@13
    if-nez v2, :cond_0

    #@15
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@17
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@19
    if-nez v2, :cond_0

    #@1b
    move v0, v1

    #@1c
    goto :goto_0
.end method

.method public hasWindowDecorInsets()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 244
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@4
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@6
    if-nez v2, :cond_0

    #@8
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 245
    :cond_1
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@11
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@13
    if-nez v2, :cond_0

    #@15
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@17
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@19
    if-nez v2, :cond_0

    #@1b
    move v0, v1

    #@1c
    goto :goto_0
.end method

.method public isConsumed()Z
    .locals 1

    #@0
    .prologue
    .line 271
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isRound()Z
    .locals 1

    #@0
    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    #@2
    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 336
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@5
    .line 337
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@a
    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@c
    .line 338
    return-object v0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 350
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@5
    .line 351
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@a
    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@c
    .line 352
    return-object v0
.end method

.method public replaceWindowDecorInsets(IIII)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 385
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@5
    .line 386
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@a
    iput-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@c
    .line 387
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "WindowInsets{systemWindowInsets="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 481
    const-string/jumbo v1, " windowDecorInsets="

    #@15
    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 481
    iget-object v1, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@1b
    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 482
    const-string/jumbo v1, " stableInsets="

    #@22
    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 482
    iget-object v1, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@28
    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 483
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_0

    #@32
    const-string/jumbo v0, " round}"

    #@35
    .line 480
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0

    #@3e
    .line 483
    :cond_0
    const-string/jumbo v0, "}"

    #@41
    goto :goto_0
.end method
