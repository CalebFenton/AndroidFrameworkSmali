.class public final synthetic Landroid/net/NetworkAgent$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/NetworkAgent$RegistryAction;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/net/QosSessionAttributes;


# direct methods
.method public synthetic constructor blacklist <init>(IILandroid/net/QosSessionAttributes;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda14;->f$0:I

    iput p2, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda14;->f$1:I

    iput-object p3, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda14;->f$2:Landroid/net/QosSessionAttributes;

    return-void
.end method


# virtual methods
.method public final blacklist execute(Landroid/net/INetworkAgentRegistry;)V
    .registers 5

    .line 0
    iget v0, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda14;->f$0:I

    iget v1, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda14;->f$1:I

    iget-object v2, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda14;->f$2:Landroid/net/QosSessionAttributes;

    invoke-static {v0, v1, v2, p1}, Landroid/net/NetworkAgent;->lambda$sendQosSessionAvailable$10(IILandroid/net/QosSessionAttributes;Landroid/net/INetworkAgentRegistry;)V

    return-void
.end method
