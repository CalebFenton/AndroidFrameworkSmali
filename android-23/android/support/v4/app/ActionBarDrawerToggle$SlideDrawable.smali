.class Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideDrawable"
.end annotation


# instance fields
.field private final mHasMirroring:Z

.field private mOffset:F

.field private mPosition:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/app/ActionBarDrawerToggle;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "this$0"    # Landroid/support/v4/app/ActionBarDrawerToggle;
    .param p2, "wrapped"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 508
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    #@3
    .line 509
    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    #@6
    .line 502
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v2, 0x12

    #@a
    if-le v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    #@f
    .line 503
    new-instance v0, Landroid/graphics/Rect;

    #@11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@14
    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@16
    .line 508
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/ActionBarDrawerToggle;
    .param p2, "wrapped"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 540
    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p0, v3}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V

    #@6
    .line 541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@9
    .line 545
    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    #@b
    invoke-static {v3}, Landroid/support/v4/app/ActionBarDrawerToggle;->-get0(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/app/Activity;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@16
    move-result-object v3

    #@17
    .line 544
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@1a
    move-result v3

    #@1b
    .line 545
    const/4 v4, 0x1

    #@1c
    .line 544
    if-ne v3, v4, :cond_1

    #@1e
    const/4 v1, 0x1

    #@1f
    .line 546
    .local v1, "isLayoutRTL":Z
    :goto_0
    if-eqz v1, :cond_2

    #@21
    const/4 v0, -0x1

    #@22
    .line 547
    .local v0, "flipRtl":I
    :goto_1
    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@27
    move-result v2

    #@28
    .line 548
    .local v2, "width":I
    iget v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    #@2a
    neg-float v3, v3

    #@2b
    int-to-float v4, v2

    #@2c
    mul-float/2addr v3, v4

    #@2d
    iget v4, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    #@2f
    mul-float/2addr v3, v4

    #@30
    int-to-float v4, v0

    #@31
    mul-float/2addr v3, v4

    #@32
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@35
    .line 551
    if-eqz v1, :cond_0

    #@37
    iget-boolean v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    #@39
    if-eqz v3, :cond_3

    #@3b
    .line 556
    :cond_0
    :goto_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    #@3e
    .line 557
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@41
    .line 539
    return-void

    #@42
    .line 544
    .end local v0    # "flipRtl":I
    .end local v1    # "isLayoutRTL":Z
    .end local v2    # "width":I
    :cond_1
    const/4 v1, 0x0

    #@43
    .restart local v1    # "isLayoutRTL":Z
    goto :goto_0

    #@44
    .line 546
    :cond_2
    const/4 v0, 0x1

    #@45
    .restart local v0    # "flipRtl":I
    goto :goto_1

    #@46
    .line 552
    .restart local v2    # "width":I
    :cond_3
    int-to-float v3, v2

    #@47
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@4a
    .line 553
    const/high16 v3, -0x40800000    # -1.0f

    #@4c
    const/high16 v4, 0x3f800000    # 1.0f

    #@4e
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    #@51
    goto :goto_2
.end method

.method public getPosition()F
    .locals 1

    #@0
    .prologue
    .line 523
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    #@2
    return v0
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    #@0
    .prologue
    .line 534
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    #@2
    .line 535
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    #@5
    .line 533
    return-void
.end method

.method public setPosition(F)V
    .locals 0
    .param p1, "position"    # F

    #@0
    .prologue
    .line 518
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    #@2
    .line 519
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    #@5
    .line 517
    return-void
.end method
