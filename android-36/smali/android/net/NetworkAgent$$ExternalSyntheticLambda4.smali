.class public final synthetic Landroid/net/NetworkAgent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/NetworkAgent$RegistryAction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/LinkProperties;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/LinkProperties;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda4;->f$0:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public final blacklist execute(Landroid/net/INetworkAgentRegistry;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda4;->f$0:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Landroid/net/NetworkAgent;->lambda$sendLinkProperties$0(Landroid/net/LinkProperties;Landroid/net/INetworkAgentRegistry;)V

    return-void
.end method
