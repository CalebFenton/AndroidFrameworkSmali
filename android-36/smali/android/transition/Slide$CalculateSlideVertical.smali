.class abstract Landroid/transition/Slide$CalculateSlideVertical;
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
    name = "CalculateSlideVertical"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/transition/Slide-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/transition/Slide$CalculateSlideVertical;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "fraction"    # F

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method
