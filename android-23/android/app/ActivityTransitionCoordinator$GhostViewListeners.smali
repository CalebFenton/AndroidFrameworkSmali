.class Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
.super Ljava/lang/Object;
.source "ActivityTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostViewListeners"
.end annotation


# instance fields
.field private mDecor:Landroid/view/ViewGroup;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mParent:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "decor"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 949
    new-instance v0, Landroid/graphics/Matrix;

    #@5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    #@a
    .line 952
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    #@c
    .line 953
    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    #@e
    .line 954
    iput-object p3, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mDecor:Landroid/view/ViewGroup;

    #@10
    .line 951
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 958
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public onPreDraw()Z
    .locals 4

    #@0
    .prologue
    .line 963
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    #@2
    invoke-static {v1}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    #@5
    move-result-object v0

    #@6
    .line 964
    .local v0, "ghostView":Landroid/view/GhostView;
    if-nez v0, :cond_0

    #@8
    .line 965
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    #@a
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@11
    .line 970
    :goto_0
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 967
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    #@15
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mDecor:Landroid/view/ViewGroup;

    #@17
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    #@19
    invoke-static {v1, v2, v3}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    #@1c
    .line 968
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    #@1e
    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    #@21
    goto :goto_0
.end method
