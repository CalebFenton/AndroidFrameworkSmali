.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/Choreographer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/Choreographer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;->f$0:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final blacklist onWaitForBufferRelease(J)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;->f$0:Landroid/view/Choreographer;

    invoke-virtual {v0, p1, p2}, Landroid/view/Choreographer;->onWaitForBufferRelease(J)V

    return-void
.end method
