.class Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;
.super Ljava/lang/Object;
.source "BackgroundBlurDrawable.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;


# direct methods
.method public static synthetic blacklist $r8$lambda$POLt9u12y9LKno6w7V7RxlF0nWM(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->lambda$positionLost$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mw4xXahlJVdDDfXFRLj36A7uIWY(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;IIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->lambda$positionChanged$0(IIII)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$positionChanged$0(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 84
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    return-void
.end method

.method private synthetic blacklist lambda$positionLost$1()V
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist positionChanged(JIIII)V
    .registers 14
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 83
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p3    # "left":I
    .end local p4    # "top":I
    .end local p5    # "right":I
    .end local p6    # "bottom":I
    .local v3, "left":I
    .local v4, "top":I
    .local v5, "right":I
    .local v6, "bottom":I
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;IIII)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onRenderNodePositionChanged(JLjava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public blacklist positionLost(J)V
    .registers 5
    .param p1, "frameNumber"    # J

    .line 90
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onRenderNodePositionChanged(JLjava/lang/Runnable;)V

    .line 93
    return-void
.end method
