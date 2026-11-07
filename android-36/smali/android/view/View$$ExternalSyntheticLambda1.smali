.class public final synthetic Landroid/view/View$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Bundle;

.field public final synthetic blacklist f$1:Landroid/view/displayhash/DisplayHashResultCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Bundle;Landroid/view/displayhash/DisplayHashResultCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/View$$ExternalSyntheticLambda1;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Landroid/view/View$$ExternalSyntheticLambda1;->f$1:Landroid/view/displayhash/DisplayHashResultCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/View$$ExternalSyntheticLambda1;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/view/View$$ExternalSyntheticLambda1;->f$1:Landroid/view/displayhash/DisplayHashResultCallback;

    invoke-static {v0, v1}, Landroid/view/View;->lambda$generateDisplayHash$6(Landroid/os/Bundle;Landroid/view/displayhash/DisplayHashResultCallback;)V

    return-void
.end method
