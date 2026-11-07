.class public final synthetic Landroid/telecom/InCallAdapter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/InCallAdapter$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/telecom/InCallAdapter$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    invoke-static {v0}, Landroid/telecom/InCallAdapter$1;->lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;)V

    return-void
.end method
