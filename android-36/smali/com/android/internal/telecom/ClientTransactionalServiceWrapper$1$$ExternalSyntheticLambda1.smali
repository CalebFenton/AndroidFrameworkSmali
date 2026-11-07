.class public final synthetic Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Landroid/telecom/CallEventCallback;

.field public final synthetic blacklist f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/telecom/CallEventCallback;Ljava/lang/Object;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;->f$1:Landroid/telecom/CallEventCallback;

    iput-object p3, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;->f$1:Landroid/telecom/CallEventCallback;

    iget-object v2, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->lambda$handleEventCallback$1(Ljava/lang/String;Landroid/telecom/CallEventCallback;Ljava/lang/Object;)V

    return-void
.end method
