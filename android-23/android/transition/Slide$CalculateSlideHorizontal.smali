.class abstract Landroid/transition/Slide$CalculateSlideHorizontal;
.super Ljava/lang/Object;
.source "Slide.java"

# interfaces
.implements Landroid/transition/Slide$CalculateSlide;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CalculateSlideHorizontal"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/transition/Slide$CalculateSlideHorizontal;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/transition/Slide$CalculateSlideHorizontal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@3
    move-result v0

    #@4
    return v0
.end method
