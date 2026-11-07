.class public final synthetic Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    check-cast p1, Landroid/service/credentials/CredentialProviderService;

    check-cast p2, Landroid/service/credentials/ClearCredentialStateRequest;

    check-cast p3, Landroid/os/CancellationSignal;

    check-cast p4, Landroid/service/credentials/CredentialProviderService$1$3;

    invoke-virtual {p1, p2, p3, p4}, Landroid/service/credentials/CredentialProviderService;->onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V

    return-void
.end method
