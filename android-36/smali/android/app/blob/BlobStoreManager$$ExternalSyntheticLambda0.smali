.class public final synthetic Landroid/app/blob/BlobStoreManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/blob/BlobStoreManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final whitelist onResult(Landroid/os/Bundle;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Landroid/app/blob/BlobStoreManager;->lambda$waitForIdle$0(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V

    return-void
.end method
