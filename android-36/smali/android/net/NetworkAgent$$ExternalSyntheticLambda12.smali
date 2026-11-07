.class public final synthetic Landroid/net/NetworkAgent$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/NetworkAgent$RegistryAction;


# instance fields
.field public final synthetic blacklist f$0:J


# direct methods
.method public synthetic constructor blacklist <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda12;->f$0:J

    return-void
.end method


# virtual methods
.method public final blacklist execute(Landroid/net/INetworkAgentRegistry;)V
    .registers 4

    .line 0
    iget-wide v0, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda12;->f$0:J

    invoke-static {v0, v1, p1}, Landroid/net/NetworkAgent;->lambda$setLingerDuration$14(JLandroid/net/INetworkAgentRegistry;)V

    return-void
.end method
