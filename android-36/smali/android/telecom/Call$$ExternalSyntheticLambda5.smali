.class public final synthetic Landroid/telecom/Call$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/Call$Callback;

.field public final synthetic blacklist f$1:Landroid/telecom/Call;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Call$$ExternalSyntheticLambda5;->f$0:Landroid/telecom/Call$Callback;

    iput-object p2, p0, Landroid/telecom/Call$$ExternalSyntheticLambda5;->f$1:Landroid/telecom/Call;

    iput p3, p0, Landroid/telecom/Call$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telecom/Call$$ExternalSyntheticLambda5;->f$0:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$$ExternalSyntheticLambda5;->f$1:Landroid/telecom/Call;

    iget v2, p0, Landroid/telecom/Call$$ExternalSyntheticLambda5;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telecom/Call;->lambda$internalOnRttInitiationFailure$1(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    return-void
.end method
