.class final Landroid/animation/LayoutTransition$CleanupCallback;
.super Ljava/lang/Object;
.source "LayoutTransition.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/LayoutTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CleanupCallback"
.end annotation


# instance fields
.field final greylist-max-o layoutChangeListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o parent:Landroid/view/ViewGroup;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Map;Landroid/view/ViewGroup;)V
    .registers 3
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 1510
    .local p1, "listenerMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1511
    iput-object p1, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    .line 1512
    iput-object p2, p0, Landroid/animation/LayoutTransition$CleanupCallback;->parent:Landroid/view/ViewGroup;

    .line 1513
    return-void
.end method

.method private greylist-max-o cleanup()V
    .registers 6

    .line 1516
    iget-object v0, p0, Landroid/animation/LayoutTransition$CleanupCallback;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1517
    iget-object v0, p0, Landroid/animation/LayoutTransition$CleanupCallback;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1518
    iget-object v0, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1519
    .local v0, "count":I
    if-lez v0, :cond_3d

    .line 1520
    iget-object v1, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1521
    .local v1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1522
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnLayoutChangeListener;

    .line 1523
    .local v4, "listener":Landroid/view/View$OnLayoutChangeListener;
    invoke-virtual {v3, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1524
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "listener":Landroid/view/View$OnLayoutChangeListener;
    goto :goto_20

    .line 1525
    :cond_38
    iget-object v2, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1527
    .end local v1    # "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    :cond_3d
    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 2

    .line 1540
    invoke-direct {p0}, Landroid/animation/LayoutTransition$CleanupCallback;->cleanup()V

    .line 1541
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 1531
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 1535
    invoke-direct {p0}, Landroid/animation/LayoutTransition$CleanupCallback;->cleanup()V

    .line 1536
    return-void
.end method
