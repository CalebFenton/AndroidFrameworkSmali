.class public final synthetic Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;

.field public final synthetic blacklist f$1:Landroid/net/nsd/DiscoveryRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;Landroid/net/nsd/DiscoveryRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda13;->f$1:Landroid/net/nsd/DiscoveryRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda13;->f$1:Landroid/net/nsd/DiscoveryRequest;

    invoke-static {v0, v1}, Landroid/net/nsd/NsdManager$ServiceHandler;->lambda$handleMessage$5(Ljava/lang/Object;Landroid/net/nsd/DiscoveryRequest;)V

    return-void
.end method
