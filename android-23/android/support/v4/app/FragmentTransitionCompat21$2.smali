.class final Landroid/support/v4/app/FragmentTransitionCompat21$2;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$renamedViews:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "val$container"    # Landroid/view/View;
    .param p2, "val$enterTransition"    # Landroid/transition/Transition;
    .param p3, "val$nonExistentView"    # Landroid/view/View;
    .param p4, "val$inFragment"    # Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

    #@0
    .prologue
    .line 124
    .local p5, "val$nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "val$renamedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p7, "val$enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$container:Landroid/view/View;

    #@2
    iput-object p2, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    #@4
    iput-object p3, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;

    #@6
    iput-object p4, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

    #@8
    iput-object p5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    #@a
    iput-object p6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    #@c
    iput-object p7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    #@e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    #@0
    .prologue
    .line 126
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$container:Landroid/view/View;

    #@2
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9
    .line 127
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 128
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    #@f
    iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;

    #@11
    invoke-virtual {v6, v7}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@14
    .line 130
    :cond_0
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

    #@16
    invoke-interface {v6}, Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;->getView()Landroid/view/View;

    #@19
    move-result-object v2

    #@1a
    .line 131
    .local v2, "fragmentView":Landroid/view/View;
    if-eqz v2, :cond_3

    #@1c
    .line 132
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    #@1e
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    #@21
    move-result v6

    #@22
    if-nez v6, :cond_2

    #@24
    .line 133
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    #@26
    invoke-static {v6, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    #@29
    .line 134
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    #@2b
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@2e
    move-result-object v6

    #@2f
    iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    #@31
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@34
    move-result-object v7

    #@35
    invoke-interface {v6, v7}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    #@38
    .line 135
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    #@3a
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3d
    move-result-object v6

    #@3e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v1

    #@42
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_2

    #@48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Ljava/util/Map$Entry;

    #@4e
    .line 136
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@51
    move-result-object v4

    #@52
    check-cast v4, Ljava/lang/String;

    #@54
    .line 137
    .local v4, "to":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    #@56
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Landroid/view/View;

    #@5c
    .line 138
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_1

    #@5e
    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Ljava/lang/String;

    #@64
    .line 140
    .local v3, "from":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    #@67
    goto :goto_0

    #@68
    .line 144
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "from":Ljava/lang/String;
    .end local v4    # "to":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    #@6a
    if-eqz v6, :cond_3

    #@6c
    .line 145
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    #@6e
    invoke-static {v6, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->-wrap1(Ljava/util/ArrayList;Landroid/view/View;)V

    #@71
    .line 146
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    #@73
    iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    #@75
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@7c
    .line 147
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    #@7e
    iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;

    #@80
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83
    .line 148
    iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    #@85
    iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    #@87
    invoke-static {v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@8a
    .line 151
    :cond_3
    const/4 v6, 0x1

    #@8b
    return v6
.end method
