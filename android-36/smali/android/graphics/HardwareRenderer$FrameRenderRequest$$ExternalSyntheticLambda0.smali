.class public final synthetic Landroid/graphics/HardwareRenderer$FrameRenderRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameCommit(Z)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->lambda$setFrameCommitCallback$0(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Z)V

    return-void
.end method
