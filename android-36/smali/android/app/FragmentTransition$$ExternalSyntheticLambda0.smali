.class public final synthetic Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/transition/Transition;

.field public final synthetic blacklist f$1:Landroid/view/View;

.field public final synthetic blacklist f$2:Landroid/app/Fragment;

.field public final synthetic blacklist f$3:Ljava/util/ArrayList;

.field public final synthetic blacklist f$4:Ljava/util/ArrayList;

.field public final synthetic blacklist f$5:Ljava/util/ArrayList;

.field public final synthetic blacklist f$6:Landroid/transition/Transition;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$0:Landroid/transition/Transition;

    iput-object p2, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$2:Landroid/app/Fragment;

    iput-object p4, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$5:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$6:Landroid/transition/Transition;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 8

    .line 0
    iget-object v0, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$0:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$2:Landroid/app/Fragment;

    iget-object v3, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$5:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda0;->f$6:Landroid/transition/Transition;

    invoke-static/range {v0 .. v6}, Landroid/app/FragmentTransition;->lambda$scheduleTargetChange$1(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    return-void
.end method
