.class public Landroid/transition/AutoTransition;
.super Landroid/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    .line 39
    invoke-direct {p0}, Landroid/transition/AutoTransition;->init()V

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Landroid/transition/AutoTransition;->init()V

    .line 45
    return-void
.end method

.method private greylist-max-o init()V
    .registers 4

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/transition/AutoTransition;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 49
    new-instance v1, Landroid/transition/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/transition/AutoTransition;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    .line 50
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/transition/Fade;

    invoke-direct {v2, v0}, Landroid/transition/Fade;-><init>(I)V

    .line 51
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 52
    return-void
.end method
