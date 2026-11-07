.class public final synthetic Landroid/net/NetworkAgent$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/NetworkAgent$RegistryAction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/NetworkScore;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/NetworkScore;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda13;->f$0:Landroid/net/NetworkScore;

    return-void
.end method


# virtual methods
.method public final blacklist execute(Landroid/net/INetworkAgentRegistry;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/NetworkAgent$$ExternalSyntheticLambda13;->f$0:Landroid/net/NetworkScore;

    invoke-static {v0, p1}, Landroid/net/NetworkAgent;->lambda$sendNetworkScore$7(Landroid/net/NetworkScore;Landroid/net/INetworkAgentRegistry;)V

    return-void
.end method
