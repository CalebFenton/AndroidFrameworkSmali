.class public final synthetic Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/HandwritingInitiator;

.field public final synthetic blacklist f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/HandwritingInitiator;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;->f$0:Landroid/view/HandwritingInitiator;

    iput-object p2, p0, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;->f$0:Landroid/view/HandwritingInitiator;

    iget-object v1, p0, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/ref/WeakReference;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Landroid/view/HandwritingInitiator;->$r8$lambda$enNv4jkNW32Ldl00gpS-aH8O7UY(Landroid/view/HandwritingInitiator;Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V

    return-void
.end method
