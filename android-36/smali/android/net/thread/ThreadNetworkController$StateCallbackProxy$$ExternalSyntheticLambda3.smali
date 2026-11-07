.class public final synthetic Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda3;->f$0:Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;

    iput-wide p2, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda3;->f$0:Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;

    iget-wide v1, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda3;->f$1:J

    invoke-static {v0, v1, v2}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->$r8$lambda$rYyTXRUaOZExPXbRnxtj3d2-XJE(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;J)V

    return-void
.end method
