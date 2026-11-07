.class Landroid/widget/ScrollView$DifferentialFlingTarget;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DifferentialFlingTarget"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ScrollView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ScrollView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2213
    iput-object p1, p0, Landroid/widget/ScrollView$DifferentialFlingTarget;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ScrollView$DifferentialFlingTarget;-><init>(Landroid/widget/ScrollView;)V

    return-void
.end method


# virtual methods
.method public blacklist getScaledScrollFactor()F
    .registers 2

    .line 2229
    iget-object v0, p0, Landroid/widget/ScrollView$DifferentialFlingTarget;->this$0:Landroid/widget/ScrollView;

    invoke-static {v0}, Landroid/widget/ScrollView;->-$$Nest$fgetmVerticalScrollFactor(Landroid/widget/ScrollView;)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public blacklist startDifferentialMotionFling(F)Z
    .registers 4
    .param p1, "velocity"    # F

    .line 2217
    invoke-virtual {p0}, Landroid/widget/ScrollView$DifferentialFlingTarget;->stopDifferentialMotionFling()V

    .line 2218
    iget-object v0, p0, Landroid/widget/ScrollView$DifferentialFlingTarget;->this$0:Landroid/widget/ScrollView;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fling(I)V

    .line 2219
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist stopDifferentialMotionFling()V
    .registers 2

    .line 2224
    iget-object v0, p0, Landroid/widget/ScrollView$DifferentialFlingTarget;->this$0:Landroid/widget/ScrollView;

    invoke-static {v0}, Landroid/widget/ScrollView;->-$$Nest$fgetmScroller(Landroid/widget/ScrollView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2225
    return-void
.end method
