.class Landroid/app/EnterTransitionCoordinator$2;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$decor:Landroid/view/ViewGroup;

.field final synthetic val$sharedElements:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Landroid/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;
    .param p2, "val$decor"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 141
    .local p3, "val$sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$2;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$2;->val$decor:Landroid/view/ViewGroup;

    #@4
    iput-object p3, p0, Landroid/app/EnterTransitionCoordinator$2;->val$sharedElements:Landroid/util/ArrayMap;

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
    .line 144
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$2;->val$decor:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9
    .line 145
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$2;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@b
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$2;->val$sharedElements:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    #@10
    .line 146
    const/4 v0, 0x1

    #@11
    return v0
.end method
