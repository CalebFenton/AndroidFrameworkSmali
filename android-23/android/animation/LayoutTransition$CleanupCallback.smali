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
.field final layoutChangeListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/view/ViewGroup;)V
    .locals 0
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1502
    .local p1, "listenerMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1503
    iput-object p1, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    #@5
    .line 1504
    iput-object p2, p0, Landroid/animation/LayoutTransition$CleanupCallback;->parent:Landroid/view/ViewGroup;

    #@7
    .line 1502
    return-void
.end method

.method private cleanup()V
    .locals 6

    #@0
    .prologue
    .line 1508
    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->parent:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v5

    #@6
    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9
    .line 1509
    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->parent:Landroid/view/ViewGroup;

    #@b
    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@e
    .line 1510
    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    #@10
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@13
    move-result v0

    #@14
    .line 1511
    .local v0, "count":I
    if-lez v0, :cond_1

    #@16
    .line 1512
    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    #@18
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1b
    move-result-object v4

    #@1c
    .line 1513
    .local v4, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v3

    #@20
    .local v3, "view$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_0

    #@26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/view/View;

    #@2c
    .line 1514
    .local v2, "view":Landroid/view/View;
    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    #@2e
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    #@34
    .line 1515
    .local v1, "listener":Landroid/view/View$OnLayoutChangeListener;
    invoke-virtual {v2, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@37
    goto :goto_0

    #@38
    .line 1517
    .end local v1    # "listener":Landroid/view/View$OnLayoutChangeListener;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    #@3a
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    #@3d
    .line 1507
    .end local v3    # "view$iterator":Ljava/util/Iterator;
    .end local v4    # "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    #@0
    .prologue
    .line 1532
    invoke-direct {p0}, Landroid/animation/LayoutTransition$CleanupCallback;->cleanup()V

    #@3
    .line 1533
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1522
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1527
    invoke-direct {p0}, Landroid/animation/LayoutTransition$CleanupCallback;->cleanup()V

    #@3
    .line 1526
    return-void
.end method
