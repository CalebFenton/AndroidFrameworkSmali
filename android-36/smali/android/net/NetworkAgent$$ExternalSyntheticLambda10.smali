.class public final synthetic Landroid/net/NetworkAgent$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/NetworkAgent$RegistryAction;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda10;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist execute(Landroid/net/INetworkAgentRegistry;)V
    .registers 3

    .line 0
    iget v0, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda10;->f$0:I

    invoke-static {v0, p1}, Landroid/net/NetworkAgent;->lambda$unregisterAfterReplacement$3(ILandroid/net/INetworkAgentRegistry;)V

    return-void
.end method
