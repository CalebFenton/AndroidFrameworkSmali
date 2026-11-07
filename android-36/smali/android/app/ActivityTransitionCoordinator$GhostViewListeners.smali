.class Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
.super Ljava/lang/Object;
.source "ActivityTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostViewListeners"
.end annotation


# instance fields
.field private greylist-max-o mDecor:Landroid/view/ViewGroup;

.field private greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mParent:Landroid/view/View;

.field private greylist-max-o mView:Landroid/view/View;

.field private greylist-max-o mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "decor"    # Landroid/view/ViewGroup;

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    .line 1068
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    .line 1069
    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    .line 1070
    iput-object p3, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mDecor:Landroid/view/ViewGroup;

    .line 1071
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 1072
    return-void
.end method


# virtual methods
.method public greylist-max-o getView()Landroid/view/View;
    .registers 2

    .line 1075
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist onPreDraw()Z
    .registers 5

    .line 1080
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    move-result-object v0

    .line 1081
    .local v0, "ghostView":Landroid/view/GhostView;
    if-eqz v0, :cond_20

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_20

    .line 1084
    :cond_11
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 1085
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_23

    .line 1082
    :cond_20
    :goto_20
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->removeListener()V

    .line 1087
    :goto_23
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 1101
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 1102
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 1106
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->removeListener()V

    .line 1107
    return-void
.end method

.method public greylist-max-o removeListener()V
    .registers 2

    .line 1091
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1092
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_17

    .line 1094
    :cond_e
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1096
    :goto_17
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1097
    return-void
.end method
