.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceView;

    return-void
.end method


# virtual methods
.method public final whitelist onPreDraw()Z
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->$r8$lambda$NfZyM_TG8F8lqzaOVZ7noREFjzU(Landroid/view/SurfaceView;)Z

    move-result v0

    return v0
.end method
