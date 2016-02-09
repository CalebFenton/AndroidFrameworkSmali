.class public Landroid/transition/AutoTransition;
.super Landroid/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    #@3
    .line 39
    invoke-direct {p0}, Landroid/transition/AutoTransition;->init()V

    #@6
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 44
    invoke-direct {p0}, Landroid/transition/AutoTransition;->init()V

    #@6
    .line 42
    return-void
.end method

.method private init()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 48
    invoke-virtual {p0, v2}, Landroid/transition/AutoTransition;->setOrdering(I)Landroid/transition/TransitionSet;

    #@4
    .line 49
    new-instance v0, Landroid/transition/Fade;

    #@6
    const/4 v1, 0x2

    #@7
    invoke-direct {v0, v1}, Landroid/transition/Fade;-><init>(I)V

    #@a
    invoke-virtual {p0, v0}, Landroid/transition/AutoTransition;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@d
    move-result-object v0

    #@e
    .line 50
    new-instance v1, Landroid/transition/ChangeBounds;

    #@10
    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    #@13
    .line 49
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@16
    move-result-object v0

    #@17
    .line 51
    new-instance v1, Landroid/transition/Fade;

    #@19
    invoke-direct {v1, v2}, Landroid/transition/Fade;-><init>(I)V

    #@1c
    .line 49
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@1f
    .line 47
    return-void
.end method
