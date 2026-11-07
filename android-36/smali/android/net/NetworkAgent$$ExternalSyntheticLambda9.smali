.class public final synthetic Landroid/net/NetworkAgent$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/NetworkAgent$RegistryAction;


# instance fields
.field public final synthetic blacklist f$0:Z

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(ZZ)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda9;->f$0:Z

    iput-boolean p2, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda9;->f$1:Z

    return-void
.end method


# virtual methods
.method public final blacklist execute(Landroid/net/INetworkAgentRegistry;)V
    .registers 4

    .line 0
    iget-boolean v0, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda9;->f$0:Z

    iget-boolean v1, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda9;->f$1:Z

    invoke-static {v0, v1, p1}, Landroid/net/NetworkAgent;->lambda$explicitlySelected$8(ZZLandroid/net/INetworkAgentRegistry;)V

    return-void
.end method
