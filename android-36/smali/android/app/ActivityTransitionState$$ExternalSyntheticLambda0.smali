.class public final synthetic Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityTransitionState;

.field public final synthetic blacklist f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityTransitionState;

    iput-object p2, p0, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityTransitionState;

    iget-object v1, p0, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1}, Landroid/app/ActivityTransitionState;->$r8$lambda$v-gJDskuJB_atXUKetS9hEMmyUI(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V

    return-void
.end method
