.class public final Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# static fields
.field public static final CONSUMED:Landroid/view/WindowInsets;

.field private static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAlwaysConsumeNavBar:Z

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
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    #@4
    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@7
    sput-object v0, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    #@9
    .line 62
    new-instance v0, Landroid/view/WindowInsets;

    #@b
    move-object v2, v1

    #@c
    move-object v3, v1

    #@d
    move v5, v4

    #@e
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@11
    sput-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    #@13
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v3, v2

    #@5
    move v5, v4

    #@6
    .line 99
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@9
    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 3
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;
    .param p2, "windowDecorInsets"    # Landroid/graphics/Rect;
    .param p3, "stableInsets"    # Landroid/graphics/Rect;
    .param p4, "isRound"    # Z
    .param p5, "alwaysConsumeNavBar"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 47
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@7
    .line 48
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@9
    .line 49
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@b
    .line 68
    if-nez p1, :cond_3

    #@d
    move v0, v1

    #@e
    :goto_0
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@10
    .line 69
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
    .line 71
    if-nez p2, :cond_4

    #@1a
    move v0, v1

    #@1b
    :goto_1
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@1d
    .line 72
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
    .line 74
    if-nez p3, :cond_5

    #@27
    :goto_2
    iput-boolean v1, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@29
    .line 75
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
    .line 77
    iput-boolean p4, p0, Landroid/view/WindowInsets;->mIsRound:Z

    #@33
    .line 78
    iput-boolean p5, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    #@35
    .line 67
    return-void

    #@36
    .restart local p1    # "systemWindowInsets":Landroid/graphics/Rect;
    .restart local p2    # "windowDecorInsets":Landroid/graphics/Rect;
    .restart local p3    # "stableInsets":Landroid/graphics/Rect;
    :cond_3
    move v0, v2

    #@37
    .line 68
    goto :goto_0

    #@38
    .end local p1    # "systemWindowInsets":Landroid/graphics/Rect;
    :cond_4
    move v0, v2

    #@39
    .line 71
    goto :goto_1

    #@3a
    .end local p2    # "windowDecorInsets":Landroid/graphics/Rect;
    :cond_5
    move v1, v2

    #@3b
    .line 74
    goto :goto_2
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1
    .param p1, "src"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 47
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@6
    .line 48
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@8
    .line 49
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@a
    .line 87
    iget-object v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@c
    iput-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@e
    .line 88
    iget-object v0, p1, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@10
    iput-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@12
    .line 89
    iget-object v0, p1, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@14
    iput-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@16
    .line 90
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@18
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@1a
    .line 91
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@1c
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@1e
    .line 92
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@20
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@22
    .line 93
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mIsRound:Z

    #@24
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    #@26
    .line 94
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    #@28
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    #@2a
    .line 86
    return-void
.end method


# virtual methods
.method public consumeStableInsets()Landroid/view/WindowInsets;
    .locals 2

    #@0
    .prologue
    .line 481
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@5
    .line 482
    .local v0, "result":Landroid/view/WindowInsets;
    sget-object v1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    #@7
    iput-object v1, v0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@9
    .line 483
    const/4 v1, 0x1

    #@a
    iput-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    #@c
    .line 484
    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .locals 2

    #@0
    .prologue
    .line 303
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@5
    .line 304
    .local v0, "result":Landroid/view/WindowInsets;
    sget-object v1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    #@7
    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@9
    .line 305
    const/4 v1, 0x1

    #@a
    iput-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    #@c
    .line 306
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
    .line 321
    if-nez p1, :cond_0

    #@3
    if-nez p2, :cond_0

    #@5
    if-nez p3, :cond_0

    #@7
    if-eqz p4, :cond_5

    #@9
    .line 322
    :cond_0
    new-instance v0, Landroid/view/WindowInsets;

    #@b
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@e
    .line 323
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v5, Landroid/graphics/Rect;

    #@10
    .line 324
    if-eqz p1, :cond_1

    #@12
    move v4, v1

    #@13
    .line 325
    :goto_0
    if-eqz p2, :cond_2

    #@15
    move v3, v1

    #@16
    .line 326
    :goto_1
    if-eqz p3, :cond_3

    #@18
    move v2, v1

    #@19
    .line 327
    :goto_2
    if-eqz p4, :cond_4

    #@1b
    .line 323
    :goto_3
    invoke-direct {v5, v4, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1e
    iput-object v5, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@20
    .line 328
    return-object v0

    #@21
    .line 324
    :cond_1
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@23
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@25
    move v4, v2

    #@26
    goto :goto_0

    #@27
    .line 325
    :cond_2
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@29
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@2b
    move v3, v2

    #@2c
    goto :goto_1

    #@2d
    .line 326
    :cond_3
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@2f
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@31
    goto :goto_2

    #@32
    .line 327
    :cond_4
    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@34
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@36
    goto :goto_3

    #@37
    .line 330
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
    .line 368
    new-instance v0, Landroid/view/WindowInsets;

    #@3
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@6
    .line 369
    .local v0, "result":Landroid/view/WindowInsets;
    iget-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@b
    .line 370
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    #@e
    .line 371
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
    .line 379
    if-nez p1, :cond_0

    #@3
    if-nez p2, :cond_0

    #@5
    if-nez p3, :cond_0

    #@7
    if-eqz p4, :cond_5

    #@9
    .line 380
    :cond_0
    new-instance v0, Landroid/view/WindowInsets;

    #@b
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@e
    .line 381
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v5, Landroid/graphics/Rect;

    #@10
    if-eqz p1, :cond_1

    #@12
    move v4, v1

    #@13
    .line 382
    :goto_0
    if-eqz p2, :cond_2

    #@15
    move v3, v1

    #@16
    .line 383
    :goto_1
    if-eqz p3, :cond_3

    #@18
    move v2, v1

    #@19
    .line 384
    :goto_2
    if-eqz p4, :cond_4

    #@1b
    .line 381
    :goto_3
    invoke-direct {v5, v4, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1e
    iput-object v5, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@20
    .line 385
    return-object v0

    #@21
    .line 381
    :cond_1
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@23
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@25
    move v4, v2

    #@26
    goto :goto_0

    #@27
    .line 382
    :cond_2
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@29
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@2b
    move v3, v2

    #@2c
    goto :goto_1

    #@2d
    .line 383
    :cond_3
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@2f
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@31
    goto :goto_2

    #@32
    .line 384
    :cond_4
    iget-object v1, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@34
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@36
    goto :goto_3

    #@37
    .line 387
    .end local v0    # "result":Landroid/view/WindowInsets;
    :cond_5
    return-object p0
.end method

.method public getStableInsetBottom()I
    .locals 1

    #@0
    .prologue
    .line 456
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
    .line 426
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
    .line 441
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
    .line 411
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
    .line 169
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
    .line 130
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
    .line 156
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
    .line 143
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
    .line 108
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 109
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    #@b
    .line 111
    :cond_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 112
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    #@11
    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@16
    .line 117
    :goto_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    #@18
    return-object v0

    #@19
    .line 115
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
    .line 225
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
    .line 183
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
    .line 211
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
    .line 197
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
    .line 263
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
    .line 471
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
    .line 472
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
    .line 238
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
    .line 239
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
    .line 253
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
    .line 254
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
    .line 280
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
    .line 294
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
    .line 345
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@5
    .line 346
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@a
    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@c
    .line 347
    return-object v0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 359
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@5
    .line 360
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@a
    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    #@c
    .line 361
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
    .line 394
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@5
    .line 395
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@a
    iput-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@c
    .line 396
    return-object v0
.end method

.method public shouldAlwaysConsumeNavBar()Z
    .locals 1

    #@0
    .prologue
    .line 491
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 496
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
    .line 497
    const-string/jumbo v1, " windowDecorInsets="

    #@15
    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 497
    iget-object v1, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    #@1b
    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 498
    const-string/jumbo v1, " stableInsets="

    #@22
    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 498
    iget-object v1, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    #@28
    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 499
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_0

    #@32
    const-string/jumbo v0, " round}"

    #@35
    .line 496
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
    .line 499
    :cond_0
    const-string/jumbo v0, "}"

    #@41
    goto :goto_0
.end method
