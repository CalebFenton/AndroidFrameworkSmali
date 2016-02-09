.class final Landroid/transition/Slide$3;
.super Landroid/transition/Slide$CalculateSlideVertical;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/transition/Slide$CalculateSlideVertical;-><init>(Landroid/transition/Slide$CalculateSlideVertical;)V

    #@4
    return-void
.end method


# virtual methods
.method public getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    #@7
    move-result v1

    #@8
    int-to-float v1, v1

    #@9
    sub-float/2addr v0, v1

    #@a
    return v0
.end method
