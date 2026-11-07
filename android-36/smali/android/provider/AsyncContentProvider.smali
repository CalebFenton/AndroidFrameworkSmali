.class public final Landroid/provider/AsyncContentProvider;
.super Ljava/lang/Object;
.source "AsyncContentProvider.java"


# static fields
.field private static final blacklist TIMEOUT_IN_MINUTES:J = 0x3L


# instance fields
.field private final blacklist mAsyncContentProvider:Landroid/provider/IAsyncContentProvider;


# direct methods
.method public static synthetic blacklist $r8$lambda$hPxyUo7l-6Sr_WiNOJXTBsN_8R8(Landroid/provider/AsyncContentProvider;Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/provider/AsyncContentProvider;->lambda$openMedia$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/provider/IAsyncContentProvider;)V
    .registers 2
    .param p1, "asyncContentProvider"    # Landroid/provider/IAsyncContentProvider;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/provider/AsyncContentProvider;->mAsyncContentProvider:Landroid/provider/IAsyncContentProvider;

    .line 46
    return-void
.end method

.method private synthetic blacklist lambda$openMedia$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 54
    invoke-direct {p0, p2, p1}, Landroid/provider/AsyncContentProvider;->setResult(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method private blacklist setResult(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/ParcelFileDescriptor;>;"
    const-string v0, "android.provider.extra.file_descriptor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 62
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 63
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_31

    :cond_12
    const-string v0, "android.provider.extra.error_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 64
    new-instance v1, Landroid/os/RemoteException;

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_31

    .line 68
    :cond_27
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "File descriptor and error message missing in response from CloudMediaProvider"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 73
    :goto_31
    return-void
.end method


# virtual methods
.method public blacklist openMedia(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "mediaId":Ljava/lang/String;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 54
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/provider/AsyncContentProvider$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Landroid/provider/AsyncContentProvider$$ExternalSyntheticLambda0;-><init>(Landroid/provider/AsyncContentProvider;Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 55
    .local v2, "callback":Landroid/os/RemoteCallback;
    iget-object v3, p0, Landroid/provider/AsyncContentProvider;->mAsyncContentProvider:Landroid/provider/IAsyncContentProvider;

    invoke-interface {v3, v0, v2}, Landroid/provider/IAsyncContentProvider;->openMedia(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 56
    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    return-object v3
.end method
