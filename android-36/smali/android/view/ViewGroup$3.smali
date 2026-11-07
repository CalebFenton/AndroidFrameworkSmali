.class Landroid/view/ViewGroup$3;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewGroup;->notifyAnimationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4494
    iput-object p1, p0, Landroid/view/ViewGroup$3;->this$0:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 4497
    iget-object v0, p0, Landroid/view/ViewGroup$3;->this$0:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/view/ViewGroup;->-$$Nest$fgetmAnimationListener(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewGroup$3;->this$0:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/view/ViewGroup;->-$$Nest$fgetmLayoutAnimationController(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 4498
    return-void
.end method
