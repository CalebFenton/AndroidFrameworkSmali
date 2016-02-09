.class public Landroid/widget/ZoomControls;
.super Landroid/widget/LinearLayout;
.source "ZoomControls.java"


# instance fields
.field private final mZoomIn:Landroid/widget/ZoomButton;

.field private final mZoomOut:Landroid/widget/ZoomButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 40
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 45
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1}, Landroid/widget/ZoomControls;->setFocusable(Z)V

    #@7
    .line 48
    const-string/jumbo v1, "layout_inflater"

    #@a
    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/view/LayoutInflater;

    #@10
    .line 49
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090104

    #@13
    .line 50
    const/4 v2, 0x1

    #@14
    .line 49
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@17
    .line 52
    const v1, 0x102040f

    #@1a
    invoke-virtual {p0, v1}, Landroid/widget/ZoomControls;->findViewById(I)Landroid/view/View;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/widget/ZoomButton;

    #@20
    iput-object v1, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    #@22
    .line 53
    const v1, 0x102040e

    #@25
    invoke-virtual {p0, v1}, Landroid/widget/ZoomControls;->findViewById(I)Landroid/view/View;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/widget/ZoomButton;

    #@2b
    iput-object v1, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    #@2d
    .line 43
    return-void
.end method

.method private fade(IFF)V
    .locals 4
    .param p1, "visibility"    # I
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    #@0
    .prologue
    .line 91
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@2
    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@5
    .line 92
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    #@7
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@a
    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/ZoomControls;->startAnimation(Landroid/view/animation/Animation;)V

    #@d
    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    #@10
    .line 90
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 112
    const-class v0, Landroid/widget/ZoomControls;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasFocus()Z
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    #@2
    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasFocus()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    #@a
    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasFocus()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public hide()V
    .locals 3

    #@0
    .prologue
    .line 87
    const/16 v0, 0x8

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ZoomControls;->fade(IFF)V

    #@8
    .line 86
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 79
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setIsZoomInEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    #@5
    .line 97
    return-void
.end method

.method public setIsZoomOutEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    #@5
    .line 101
    return-void
.end method

.method public setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@5
    .line 56
    return-void
.end method

.method public setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@5
    .line 60
    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 1
    .param p1, "speed"    # J

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    #@5
    .line 70
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    #@a
    .line 68
    return-void
.end method

.method public show()V
    .locals 3

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/high16 v2, 0x3f800000    # 1.0f

    #@4
    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ZoomControls;->fade(IFF)V

    #@7
    .line 82
    return-void
.end method
