.class public final synthetic Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/RemoteConnection$Callback;

.field public final synthetic blacklist f$1:Landroid/telecom/RemoteConnection;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;->f$0:Landroid/telecom/RemoteConnection$Callback;

    iput-object p2, p0, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;->f$1:Landroid/telecom/RemoteConnection;

    iput p3, p0, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;->f$0:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;->f$1:Landroid/telecom/RemoteConnection;

    iget v2, p0, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telecom/RemoteConnection;->lambda$onRttInitiationFailure$1(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    return-void
.end method
