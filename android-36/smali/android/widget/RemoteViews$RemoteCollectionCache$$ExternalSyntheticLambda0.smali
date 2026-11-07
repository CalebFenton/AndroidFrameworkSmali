.class public final synthetic Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor blacklist <init>(IILjava/util/concurrent/CompletableFuture;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Landroid/os/IBinder;

    invoke-static {v0, v1, v2, p1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->lambda$getItemsFutureFromIntentWithTimeout$2(IILjava/util/concurrent/CompletableFuture;Landroid/os/IBinder;)V

    return-void
.end method
