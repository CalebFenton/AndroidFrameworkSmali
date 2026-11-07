.class public final synthetic Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
