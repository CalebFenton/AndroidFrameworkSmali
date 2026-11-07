.class public final synthetic Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;

.field public final synthetic blacklist f$1:Landroid/net/thread/ActiveOperationalDataset;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;Landroid/net/thread/ActiveOperationalDataset;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;

    iput-object p2, p0, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/thread/ActiveOperationalDataset;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;

    iget-object v1, p0, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/thread/ActiveOperationalDataset;

    invoke-static {v0, v1}, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;->$r8$lambda$dUZC9MfbY_1MnXsnWt1KqlgKaE8(Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;Landroid/net/thread/ActiveOperationalDataset;)V

    return-void
.end method
