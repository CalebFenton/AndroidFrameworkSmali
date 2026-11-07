.class public final synthetic Landroid/graphics/animation/RenderNodeAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/animation/RenderNodeAnimator;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/animation/RenderNodeAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/animation/RenderNodeAnimator$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/animation/RenderNodeAnimator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v0}, Landroid/graphics/animation/RenderNodeAnimator;->onFinished()V

    return-void
.end method
