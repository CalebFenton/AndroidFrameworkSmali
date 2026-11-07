.class public final synthetic Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/ArrayMap;

.field public final synthetic blacklist f$1:Landroid/transition/TransitionSet;

.field public final synthetic blacklist f$10:Landroid/graphics/Rect;

.field public final synthetic blacklist f$2:Landroid/app/FragmentTransition$FragmentContainerTransition;

.field public final synthetic blacklist f$3:Ljava/util/ArrayList;

.field public final synthetic blacklist f$4:Landroid/view/View;

.field public final synthetic blacklist f$5:Landroid/app/Fragment;

.field public final synthetic blacklist f$6:Landroid/app/Fragment;

.field public final synthetic blacklist f$7:Z

.field public final synthetic blacklist f$8:Ljava/util/ArrayList;

.field public final synthetic blacklist f$9:Landroid/transition/Transition;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V
    .registers 12

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$0:Landroid/util/ArrayMap;

    iput-object p2, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$1:Landroid/transition/TransitionSet;

    iput-object p3, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$2:Landroid/app/FragmentTransition$FragmentContainerTransition;

    iput-object p4, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$4:Landroid/view/View;

    iput-object p6, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$5:Landroid/app/Fragment;

    iput-object p7, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$6:Landroid/app/Fragment;

    iput-boolean p8, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$7:Z

    iput-object p9, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$8:Ljava/util/ArrayList;

    iput-object p10, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$9:Landroid/transition/Transition;

    iput-object p11, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$10:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 12

    .line 0
    iget-object v0, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$0:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$1:Landroid/transition/TransitionSet;

    iget-object v2, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$2:Landroid/app/FragmentTransition$FragmentContainerTransition;

    iget-object v3, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$4:Landroid/view/View;

    iget-object v5, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$5:Landroid/app/Fragment;

    iget-object v6, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$6:Landroid/app/Fragment;

    iget-boolean v7, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$7:Z

    iget-object v8, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$8:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$9:Landroid/transition/Transition;

    iget-object v10, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda2;->f$10:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v10}, Landroid/app/FragmentTransition;->lambda$configureSharedElementsOrdered$3(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V

    return-void
.end method
