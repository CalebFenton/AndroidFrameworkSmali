.class public final synthetic Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;

.field public final synthetic blacklist f$1:Ljava/util/function/Supplier;

.field public final synthetic blacklist f$2:Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

.field public final synthetic blacklist f$3:Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    iput-object p4, p0, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    iget-object v2, p0, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    iget-object v3, p0, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/listeners/ListenerExecutor;->lambda$executeSafely$0(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method
