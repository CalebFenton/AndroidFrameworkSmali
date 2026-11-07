.class public final synthetic Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/time/Instant;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;ILjava/lang/String;Ljava/time/Instant;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;

    iput p2, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;->f$3:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;

    iget v1, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;->f$3:Ljava/time/Instant;

    invoke-static {v0, v1, v2, v3}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->$r8$lambda$fkMmF_VlaHcN0ggvL_VhMlG6ZeI(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;ILjava/lang/String;Ljava/time/Instant;)V

    return-void
.end method
