.class public final synthetic Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/Fragment;

.field public final synthetic blacklist f$1:Landroid/app/Fragment;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Landroid/util/ArrayMap;

.field public final synthetic blacklist f$4:Landroid/view/View;

.field public final synthetic blacklist f$5:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$0:Landroid/app/Fragment;

    iput-object p2, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$1:Landroid/app/Fragment;

    iput-boolean p3, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$2:Z

    iput-object p4, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$3:Landroid/util/ArrayMap;

    iput-object p5, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$4:Landroid/view/View;

    iput-object p6, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$0:Landroid/app/Fragment;

    iget-object v1, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$1:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v3, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$3:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$4:Landroid/view/View;

    iget-object v5, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->lambda$configureSharedElementsReordered$2(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
