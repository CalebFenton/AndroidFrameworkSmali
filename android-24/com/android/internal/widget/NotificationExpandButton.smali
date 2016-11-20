.class public Lcom/android/internal/widget/NotificationExpandButton;
.super Landroid/widget/ImageView;
.source "NotificationExpandButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@3
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 45
    return-void
.end method

.method private extendRectToMinTouchSize(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v1

    #@8
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@a
    const/high16 v2, 0x42400000    # 48.0f

    #@c
    mul-float/2addr v1, v2

    #@d
    float-to-int v0, v1

    #@e
    .line 57
    .local v0, "touchTargetSize":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    #@11
    move-result v1

    #@12
    div-int/lit8 v2, v0, 0x2

    #@14
    sub-int/2addr v1, v2

    #@15
    iput v1, p1, Landroid/graphics/Rect;->left:I

    #@17
    .line 58
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@19
    add-int/2addr v1, v0

    #@1a
    iput v1, p1, Landroid/graphics/Rect;->right:I

    #@1c
    .line 59
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    #@1f
    move-result v1

    #@20
    div-int/lit8 v2, v0, 0x2

    #@22
    sub-int/2addr v1, v2

    #@23
    iput v1, p1, Landroid/graphics/Rect;->top:I

    #@25
    .line 60
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@27
    add-int/2addr v1, v0

    #@28
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    #@2a
    .line 55
    return-void
.end method


# virtual methods
.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "clipToParent"    # Z

    #@0
    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    #@3
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationExpandButton;->extendRectToMinTouchSize(Landroid/graphics/Rect;)V

    #@6
    .line 50
    return-void
.end method
