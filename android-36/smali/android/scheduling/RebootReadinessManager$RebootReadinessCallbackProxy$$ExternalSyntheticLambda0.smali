.class public final synthetic Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;Landroid/os/RemoteCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;

    iput-object p2, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;

    iget-object v1, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/os/RemoteCallback;

    invoke-static {v0, v1}, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;->$r8$lambda$g4T-Q7I25kS0I8agvm3aOnYRj20(Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;Landroid/os/RemoteCallback;)V

    return-void
.end method
