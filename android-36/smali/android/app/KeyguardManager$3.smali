.class Landroid/app/KeyguardManager$3;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$activity:Landroid/app/Activity;

.field final synthetic blacklist val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;


# direct methods
.method constructor blacklist <init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$KeyguardDismissCallback;Landroid/app/Activity;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/KeyguardManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 910
    iput-object p2, p0, Landroid/app/KeyguardManager$3;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    iput-object p3, p0, Landroid/app/KeyguardManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDismissCancelled()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    iget-object v0, p0, Landroid/app/KeyguardManager$3;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/app/KeyguardManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 928
    iget-object v0, p0, Landroid/app/KeyguardManager$3;->val$activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/KeyguardManager$3;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/KeyguardManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/app/KeyguardManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 930
    :cond_1d
    return-void
.end method

.method public blacklist onDismissError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    iget-object v0, p0, Landroid/app/KeyguardManager$3;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/app/KeyguardManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 914
    iget-object v0, p0, Landroid/app/KeyguardManager$3;->val$activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/KeyguardManager$3;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/KeyguardManager$3$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/app/KeyguardManager$3$$ExternalSyntheticLambda1;-><init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    :cond_1d
    return-void
.end method

.method public blacklist onDismissSucceeded()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    iget-object v0, p0, Landroid/app/KeyguardManager$3;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/app/KeyguardManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 921
    iget-object v0, p0, Landroid/app/KeyguardManager$3;->val$activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/KeyguardManager$3;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/KeyguardManager$3$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/app/KeyguardManager$3$$ExternalSyntheticLambda2;-><init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 923
    :cond_1d
    return-void
.end method
