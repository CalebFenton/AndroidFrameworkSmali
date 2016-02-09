.class Landroid/app/ActivityTransitionCoordinator$2;
.super Ljava/lang/Object;
.source "ActivityTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityTransitionCoordinator;->scheduleGhostVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityTransitionCoordinator;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/app/ActivityTransitionCoordinator;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityTransitionCoordinator;
    .param p2, "val$decorView"    # Landroid/view/View;
    .param p3, "val$visibility"    # I

    #@0
    .prologue
    .line 868
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$2;->this$0:Landroid/app/ActivityTransitionCoordinator;

    #@2
    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator$2;->val$decorView:Landroid/view/View;

    #@4
    iput p3, p0, Landroid/app/ActivityTransitionCoordinator$2;->val$visibility:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$2;->val$decorView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9
    .line 872
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$2;->this$0:Landroid/app/ActivityTransitionCoordinator;

    #@b
    iget v1, p0, Landroid/app/ActivityTransitionCoordinator$2;->val$visibility:I

    #@d
    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->setGhostVisibility(I)V

    #@10
    .line 873
    const/4 v0, 0x1

    #@11
    return v0
.end method
