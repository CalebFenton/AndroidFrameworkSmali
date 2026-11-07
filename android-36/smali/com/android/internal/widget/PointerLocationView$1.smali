.class Lcom/android/internal/widget/PointerLocationView$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/PointerLocationView;


# direct methods
.method public static synthetic blacklist $r8$lambda$PwSYMm6zlyE-XoJwsGeHoDC1g8E(Lcom/android/internal/widget/PointerLocationView$1;Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/PointerLocationView$1;->lambda$onSystemGestureExclusionChanged$0(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/widget/PointerLocationView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/PointerLocationView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 991
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onSystemGestureExclusionChanged$0(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4
    .param p1, "exclusion"    # Landroid/graphics/Region;
    .param p2, "rejected"    # Landroid/graphics/Region;

    .line 1005
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->-$$Nest$fgetmSystemGestureExclusion(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1006
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->-$$Nest$fgetmSystemGestureExclusionRejected(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1007
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 1008
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    .line 1009
    return-void
.end method


# virtual methods
.method public blacklist onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "systemGestureExclusion"    # Landroid/graphics/Region;
    .param p3, "systemGestureExclusionUnrestricted"    # Landroid/graphics/Region;

    .line 996
    invoke-static {p2}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 997
    .local v0, "exclusion":Landroid/graphics/Region;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 998
    .local v1, "rejected":Landroid/graphics/Region;
    if-eqz p3, :cond_12

    .line 999
    invoke-virtual {v1, p3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1000
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1002
    :cond_12
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1003
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_22

    .line 1004
    new-instance v3, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/PointerLocationView$1;Landroid/graphics/Region;Landroid/graphics/Region;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1011
    :cond_22
    return-void
.end method
