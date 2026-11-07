.class public final synthetic Landroid/provider/AsyncContentProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/provider/AsyncContentProvider;

.field public final synthetic blacklist f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/provider/AsyncContentProvider;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/AsyncContentProvider$$ExternalSyntheticLambda0;->f$0:Landroid/provider/AsyncContentProvider;

    iput-object p2, p0, Landroid/provider/AsyncContentProvider$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final whitelist onResult(Landroid/os/Bundle;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/provider/AsyncContentProvider$$ExternalSyntheticLambda0;->f$0:Landroid/provider/AsyncContentProvider;

    iget-object v1, p0, Landroid/provider/AsyncContentProvider$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, v1, p1}, Landroid/provider/AsyncContentProvider;->$r8$lambda$hPxyUo7l-6Sr_WiNOJXTBsN_8R8(Landroid/provider/AsyncContentProvider;Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method
