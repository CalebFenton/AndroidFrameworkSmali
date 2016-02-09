.class Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarBackgroundDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContainer;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ActionBarContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarContainer;

    #@0
    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarContainer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;)V

    #@3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get2(Lcom/android/internal/widget/ActionBarContainer;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 358
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@a
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 359
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@12
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@19
    .line 356
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@1c
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 363
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@24
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@2b
    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@2d
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get5(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@30
    move-result-object v0

    #@31
    if-eqz v0, :cond_0

    #@33
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@35
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get3(Lcom/android/internal/widget/ActionBarContainer;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_0

    #@3b
    .line 366
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@3d
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get5(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@44
    goto :goto_0
.end method

.method public getOpacity()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@4
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get2(Lcom/android/internal/widget/ActionBarContainer;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@c
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@14
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@1b
    move-result v0

    #@1c
    if-ne v0, v1, :cond_3

    #@1e
    .line 398
    return v1

    #@1f
    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@21
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get3(Lcom/android/internal/widget/ActionBarContainer;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@29
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get5(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@2c
    move-result-object v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 402
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@31
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get5(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@38
    move-result v0

    #@39
    if-eq v0, v1, :cond_2

    #@3b
    .line 403
    :cond_1
    return v2

    #@3c
    .line 405
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@3e
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get0(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;

    #@41
    move-result-object v0

    #@42
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-wrap0(Landroid/view/View;)Z

    #@45
    move-result v0

    #@46
    if-nez v0, :cond_3

    #@48
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@4a
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@4d
    move-result-object v0

    #@4e
    if-eqz v0, :cond_3

    #@50
    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@52
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@59
    move-result v0

    #@5a
    if-ne v0, v1, :cond_3

    #@5c
    .line 407
    return v1

    #@5d
    .line 411
    :cond_3
    return v2
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get2(Lcom/android/internal/widget/ActionBarContainer;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@a
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@12
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get4(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@19
    .line 372
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@1c
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    #@24
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->-get1(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@2b
    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 386
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 390
    return-void
.end method
